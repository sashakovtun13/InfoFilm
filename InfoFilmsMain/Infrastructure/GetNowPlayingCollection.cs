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
    public class GetNowPlayingCollection
    {
        public ObservableCollection<FilmTitle> GetAll()
        {
            ObservableCollection<FilmTitle> filmTitles = new ObservableCollection<FilmTitle>();

            string url = "https://api.themoviedb.org/3/movie/now_playing?page=1&language=en-US&api_key=6adcfee0eaa50e9be7a88a0ddd5db2dd";
            WebClient webClient = new WebClient();
            string json = webClient.DownloadString(url);

            JObject obj = JObject.Parse(json);



            foreach (var i in obj["results"])
            {
                string overview = "";
                if (i["overview"].ToString().Length > 210)
                {
                    overview = i["overview"].ToString().Remove(210) + "...";
                }
                else
                {
                    overview = i["overview"].ToString();
                }
                var a = new FilmTitle()
                {
                    Id = Convert.ToInt32(i["id"]),
                    Vote_average = Convert.ToDouble(i["vote_average"]),
                    Title = i["title"].ToString(),
                    Release_date = i["release_date"].ToString(),
                    Overview = overview,
                    Poster_path = "https://image.tmdb.org/t/p/w185_and_h278_bestv2/" + i["poster_path"].ToString() + "?resize=300"
                };
                filmTitles.Add(a);
            }

            return filmTitles;
        }
    }
}
