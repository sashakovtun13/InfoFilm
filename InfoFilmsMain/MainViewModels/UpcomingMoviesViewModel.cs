using InfoFilmsMain.Infrastructure;
using InfoFilmsMain.Model;
using InfoFilmsMain.Utils;
using InfoFilmsMain.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows;

namespace InfoFilmsMain.MainViewModels
{
    public class UpcomingMoviesViewModel : INotifyPropertyChanged
    {
        GetUpcomingCollection getUpcoming = new GetUpcomingCollection();
        ObservableCollection<FilmTitle> topUpcomingCollection;
        public ObservableCollection<FilmTitle> TopUpcomingCollection
        {
            get => topUpcomingCollection;
            set
            {
                topUpcomingCollection = value;
                Notify();
            }
        }
        RelayCommand show;
        public RelayCommand Show
        {
            get
            {
                return show ??
                    (show = new RelayCommand(obj =>
                    {
                       

                            UserControl usc = new ItemFilmView();
                            ItemFilmViewModel vm = (usc.DataContext as ItemFilmViewModel);
                            vm.Id = (obj as FilmTitle).Id;
                            vm.Page = "UpcomingMoviesViewModel";
                            vm.Initialize();

                            UpcomingMoviesView.MainGrid.Children.Clear();
                            UpcomingMoviesView.MainGrid.Children.Add(usc); //передача между контролами
                        
                        
                    }));
            }
        }
        public UpcomingMoviesViewModel()
        {
            TopUpcomingCollection = getUpcoming.GetAll();
        }



        private void Notify([CallerMemberName]string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public event PropertyChangedEventHandler PropertyChanged;
    }
}
