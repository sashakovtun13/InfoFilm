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
    public class MyListViewModel : INotifyPropertyChanged
    {
        MyListFunks funk = new MyListFunks();
        ObservableCollection<FilmTitle> myListCol;

        public ObservableCollection<FilmTitle> MyListCol
        {
            get => myListCol;
            set
            {
                myListCol = value;
                Notify();
            }
        }
        public void Remove(int Id)
        {
          
        }
        public void Add(int Id)
        {

            
            List<MyList> addList = new List<MyList>();
                    var addFilm = new MyList() { id = Id };
                    addList.Add(addFilm);
                    foreach (var i in MyListCol)
                    {
                        var a = new MyList() { id = i.Id };
                        addList.Add(a);

                    }
                    funk.SerializeData(addList);
                    MyListCol = funk.DeserializeData();
            MessageBox.Show("Added");
        }


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
                    vm.Page = "MyListViewModel";
                    vm.Initialize();

                    MyListView.MainGrid.Children.Clear();
                    MyListView.MainGrid.Children.Add(usc); //передача между контролами
                    
                }));
            }

        }
        RelayCommand removeId;
        public ICommand RemoveId
        {
            get
            {
                return removeId ??
                (removeId = new RelayCommand(obj =>
                {
                    for (int i = 0; i < MyListCol.Count(); i++)
                    {
                        if ((obj as FilmTitle).Id == MyListCol[i].Id)
                        {
                            MyListCol.RemoveAt(i);
                        }
                    }
                    List<MyList> newList = new List<MyList>();
                    foreach(var i in MyListCol)
                    {
                        var item = new MyList() { id = i.Id };
                        newList.Add(item);
                    }
                    funk.SerializeData(newList);
                    MyListCol = funk.DeserializeData();



                }));
            }

        }
        public MyListViewModel()
        {
            MyListCol = funk.DeserializeData();
        }
        private void Notify([CallerMemberName]string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public event PropertyChangedEventHandler PropertyChanged;
    }
}
