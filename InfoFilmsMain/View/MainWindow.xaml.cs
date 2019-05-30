using InfoFilmsMain.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace InfoFilmsMain
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private int index = 0;
        public MainWindow()
        {
            InitializeComponent();
            ListViewMenu.SelectedIndex = 0;
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            BurgerMenu(0);
        }

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            BurgerMenu(1);
        }

        private void ListViewMenu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SelectedPage(sender);
        }

        public void SelectedPage(object sender)
        {
            UserControl usc = null;
            GridMain.Children.Clear();

            switch (((ListViewItem)((ListView)sender).SelectedItem).Name)
            {
                case "ItemHome":
                    usc = new ItemHomeView();
                    GridMain.Children.Add(usc);
                    break;
                case "TopRated":
                    usc = new TopRatedView();
                    GridMain.Children.Add(usc);
                    break;
                case "UpcomingMovies":
                    usc = new UpcomingMoviesView();
                    GridMain.Children.Add(usc);
                    break;
                case "NowPlaying":
                    usc = new NowPlayingView();
                    GridMain.Children.Add(usc);
                    break;
                case "MyList":
                    usc = new MyListView();
                    GridMain.Children.Add(usc);
                    break;

            }
        }
        public void BurgerMenu(int index)
        {
            if(index==0)
            {
                ButtonCloseMenu.Visibility = Visibility.Visible;
                ButtonOpenMenu.Visibility = Visibility.Collapsed;
                GridMenu.Width = 250;
                //GridMain.IsEnabled = false;
                GridMain.Opacity = 20;
                
                index = 1;
            }
            else if(index==1)
            {
                ButtonCloseMenu.Visibility = Visibility.Collapsed;
                ButtonOpenMenu.Visibility = Visibility.Visible;
                GridMenu.Width = 70;
                //GridMain.IsEnabled = true;
                GridMain.Opacity = 100;
                index = 0;
            }
        }
    }
}
