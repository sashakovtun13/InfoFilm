using InfoFilmsMain.Infrastructure;
using InfoFilmsMain.Model;
using InfoFilmsMain.Utils;
using InfoFilmsMain.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace InfoFilmsMain.MainViewModels
{
    public class ItemFilmViewModel : INotifyPropertyChanged
    {
        GetFilm getFilm = new GetFilm();
        ObservableCollection<FullFilmInfo> film;
        public ObservableCollection<FullFilmInfo> Film
        {
            get => film;
            set
            {
                film = value;
                Notify();
            }
        }

        int id;
        public int Id
        {
            get => id;
            set
            {   
                id = value;
                Console.WriteLine(id);
                Notify();
            }
        }
        string page;
        public string Page
        {
            get => page;
            set
            {
                page = value;
                Console.WriteLine(Page + " - page");
                Notify();
            }
        }

        RelayCommand back;
        public RelayCommand Back
        {
            get
            {
                return back ??
                    (back = new RelayCommand(obj =>
                    {
                     
                        BackFunk(Page);
                    }));
            }
        }
        RelayCommand playTrailer;
        public RelayCommand PlayTrailer
        {
            get
            {
                return playTrailer ??
                    (playTrailer = new RelayCommand(obj =>
                    {
                         string url = (obj as FullFilmInfo).Trailer.ToString();
                         string browserPath = "chrome.exe";
                        Process.Start(browserPath, url);
                    }));
            }
        }
        RelayCommand addToList;
        public RelayCommand AddToList
        {
            get
            {
                return addToList ??
                    (addToList = new RelayCommand(obj =>
                    {
                        Task.Factory.StartNew(() => {
                            MyListViewModel myListViewModel = new MyListViewModel();
                            myListViewModel.Add((obj as FullFilmInfo).Id);
                        });
                    }));
            }
        }
        public void Initialize()
        {
                
                Film = new ObservableCollection<FullFilmInfo>();
            var a = getFilm.GetFilmWithId(Id);
                Film.Add(a);
        }
        public void BackFunk(string page)
        {
             if (page == "TopRatedViewModel")
            {
                UserControl usc = new TopRatedView();
                ItemFilmView.MainGrid.Children.Clear();
                ItemFilmView.MainGrid.Children.Add(usc);
            }
            else if (page== "ItemHomeViewModel")
            {
                UserControl usc = new ItemHomeView();
                ItemFilmView.MainGrid.Children.Clear();
                ItemFilmView.MainGrid.Children.Add(usc);
            }
            else if(page == "NowPlayingViewModel")
            {
                UserControl usc = new NowPlayingView();
                ItemFilmView.MainGrid.Children.Clear();
                ItemFilmView.MainGrid.Children.Add(usc);
            }
            
            else if (page == "UpcomingMoviesViewModel")
            {
                UserControl usc = new UpcomingMoviesView();
                ItemFilmView.MainGrid.Children.Clear();
                ItemFilmView.MainGrid.Children.Add(usc);
            }
            else if (page == "MyListViewModel")
            {
                UserControl usc = new MyListView();
                ItemFilmView.MainGrid.Children.Clear();
                ItemFilmView.MainGrid.Children.Add(usc);
            }
        }
        private void Notify([CallerMemberName]string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public event PropertyChangedEventHandler PropertyChanged;
    }
}
