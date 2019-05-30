using InfoFilmsMain.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Threading.Tasks;

namespace InfoFilmsMain.Infrastructure
{
    public class MyListFunks
    {
        public void SerializeData(List<MyList> list)
        {
            
            DataContractJsonSerializer jsonSerializer = new DataContractJsonSerializer(typeof(List<MyList>));
            using (FileStream fs = File.OpenWrite("MyList.json"))
                jsonSerializer.WriteObject(fs, list);
        }
        public ObservableCollection<FilmTitle> DeserializeData()
        {
            GetFilm getFilm = new GetFilm();
            ObservableCollection<FilmTitle> collection = new ObservableCollection<FilmTitle>(); 

            List<MyList> myList = new List<MyList>();

            if (!File.Exists("MyList.json"))
                using (FileStream create = File.Create("MyList.json")) { }

            try
            {
                DataContractJsonSerializer jsonSerializer = new DataContractJsonSerializer(typeof(List<MyList>));
                using (FileStream fs = File.OpenRead("MyList.json"))
                    myList = jsonSerializer.ReadObject(fs) as List<MyList>;
            }
            catch (Exception) { }


            foreach (var i in myList)
            {
                var col= getFilm.GetFilmWithId(i.id);
                var a = new FilmTitle() { Id = col.Id, Title = col.Title, Vote_average = col.Vote_average, Poster_path = col.Poster_path, Overview = col.Overview, Release_date = col.Release_date };
                collection.Add(a);
            }
            return collection;
            
        }
    }
}
