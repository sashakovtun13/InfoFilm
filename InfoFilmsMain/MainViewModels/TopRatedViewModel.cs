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

namespace InfoFilmsMain.MainViewModels
{
    public class TopRatedViewModel : INotifyPropertyChanged
    {
        GetTopRatedCollection getTopRated = new GetTopRatedCollection();
        ObservableCollection<FilmTitle> topRatedCollection;
        public ObservableCollection<FilmTitle> TopRatedCollection
        {
            get => topRatedCollection;
            set
            {
                topRatedCollection = value;
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
                        vm.Page = "TopRatedViewModel";
                        vm.Initialize();

                        TopRatedView.MainGrid.Children.Clear();
                        TopRatedView.MainGrid.Children.Add(usc); //передача между контролами
                    }));
            }
        }
        public TopRatedViewModel()
        {
            TopRatedCollection = getTopRated.GetAll();
        }



        private void Notify([CallerMemberName]string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public event PropertyChangedEventHandler PropertyChanged;
    }
}

