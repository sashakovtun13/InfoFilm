using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InfoFilmsMain.Model
{
    public class FilmTitle
    {
        public int Id { get; set; }
        public double Vote_average { get; set; }
        public string Title { get; set; }
        public string Poster_path { get; set; }
        public string Overview { get; set; }
        public string Release_date { get; set; }
    }
}
