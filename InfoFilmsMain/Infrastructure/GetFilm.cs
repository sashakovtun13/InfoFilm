using InfoFilmsMain.Model;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace InfoFilmsMain.Infrastructure
{
    public class GetFilm
    {
        public FullFilmInfo GetFilmWithId(int filmId)
        {
            string url = "https://api.themoviedb.org/3/movie/" + filmId + "?api_key=6adcfee0eaa50e9be7a88a0ddd5db2dd&language=en-US";
            string urlTrailer = "https://api.themoviedb.org/3/movie/" + filmId + "/videos?api_key=6adcfee0eaa50e9be7a88a0ddd5db2dd&language=en-US";


            WebClient webClient = new WebClient();
            string jsonDetails = webClient.DownloadString(url);
            string jsonTrailer = webClient.DownloadString(urlTrailer);
            JObject objDetails = JObject.Parse(jsonDetails);
            JObject objTrailer = JObject.Parse(jsonTrailer);
            ObservableCollection<FullFilmInfo> Film = new ObservableCollection<FullFilmInfo>();



            //Get data
            List<string> pathTrailer = new List<string>();
            int Id = Convert.ToInt32(objDetails["id"]);
            double Vote_average = Convert.ToDouble(objDetails["vote_average"]);
            string Title = objDetails["original_title"].ToString();
            string Release_date = objDetails["release_date"].ToString();
            string Overview = objDetails["overview"].ToString();
            string Poster_path = "https://image.tmdb.org/t/p/w500/" + objDetails["poster_path"].ToString();
            string Backdrop_path = "https://image.tmdb.org/t/p/w500/" + objDetails["backdrop_path"].ToString();
            string Runtime = objDetails["runtime"].ToString();
            string Trailer = "";
            try
            {
                Trailer = "https://www.youtube.com/watch?v=" + objTrailer["results"][0]["key"].ToString();  //get trailer
            }
            catch
            {
                 Trailer = "https://www.youtube.com/watch?v=aDm5WZ3QiIE";
            }
            List<Genres> lIstGen = new List<Genres>();

            foreach (var i in objDetails["genres"])
            {
                var a = new Genres()
                {
                    Id = Convert.ToInt32(i["id"]),
                    Genres_Name = i["name"].ToString()
                };
                lIstGen.Add(a);
            }
            //--------------


            var newFilm = new FullFilmInfo()
            {
                Id = Id,
                Title = Title,
                Overview = Overview,
                Poster_path = Poster_path,
                Backdrop_path = Backdrop_path,
                Runtime = Runtime,
                Release_date = Release_date,
                Vote_average = Vote_average,
                Trailer = Trailer,
                Genres_list = lIstGen
            };
            
            return newFilm;
        }
    }
}
