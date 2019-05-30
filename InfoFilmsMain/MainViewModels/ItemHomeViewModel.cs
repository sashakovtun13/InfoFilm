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
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace InfoFilmsMain.MainViewModels
{
    public class ItemHomeViewModel : INotifyPropertyChanged
    {
        GetPopularCollection getPopularCollection = new GetPopularCollection();
        ObservableCollection<FilmTitle> popularCollection;

        public ObservableCollection<FilmTitle> PopularCollection
        {
            get => popularCollection;
            set
            {
                popularCollection = value;
                Notify();
            }
        }

        public int IdSelectedFilm;
        RelayCommand show;
        public ICommand Show
        {
            get
            {
                return show ??
                (show = new RelayCommand(obj =>
                    {
                        UserControl usc = new ItemFilmView();
                        ItemFilmViewModel vm = (usc.DataContext as ItemFilmViewModel);
                        vm.Id = (obj as FilmTitle).Id;
                        vm.Page = "ItemHomeViewModel";
                        vm.Initialize();

                        ItemHomeView.MainGrid.Children.Clear();
                        ItemHomeView.MainGrid.Children.Add(usc); //передача между контролами
                    }));
            }
           
        }

        public ItemHomeViewModel()
        {
            PopularCollection = getPopularCollection.GetAll();
        }


        private void Notify([CallerMemberName]string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public event PropertyChangedEventHandler PropertyChanged;
    }
}
