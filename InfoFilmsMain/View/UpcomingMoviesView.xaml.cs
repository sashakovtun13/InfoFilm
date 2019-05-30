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

namespace InfoFilmsMain.View
{
    /// <summary>
    /// Логика взаимодействия для UpcomingMoviesView.xaml
    /// </summary>
    public partial class UpcomingMoviesView : UserControl
    {
        public static Grid MainGrid { get; private set; }
        public UpcomingMoviesView()
        {
            InitializeComponent();
            MainGrid = GridMain;
        }

        
    }
}
