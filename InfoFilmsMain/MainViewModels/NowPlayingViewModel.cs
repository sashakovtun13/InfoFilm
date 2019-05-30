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
    public class NowPlayingViewModel : INotifyPropertyChanged
    {
        GetNowPlayingCollection getNowPlaying = new GetNowPlayingCollection();
        ObservableCollection<FilmTitle> nowPlayingCollection;
        public ObservableCollection<FilmTitle> NowPlayingCollection
        {
            get => nowPlayingCollection;
            set
            {
                nowPlayingCollection = value;
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
                        vm.Page = "NowPlayingViewModel";
                        vm.Initialize();

                        NowPlayingView.MainGrid.Children.Clear();
                        NowPlayingView.MainGrid.Children.Add(usc); //передача между контролами
                    }));
            }
        }
        public NowPlayingViewModel()
        {
            NowPlayingCollection = getNowPlaying.GetAll();
        }
       


        private void Notify([CallerMemberName]string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public event PropertyChangedEventHandler PropertyChanged;
    }
}

