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

namespace DehouwerDein_a2._1_DM_Project
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void PackIcon_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            ArtikelAanmaken artikelAanmaken = new ArtikelAanmaken();
            artikelAanmaken.ShowDialog();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ArtikelWindow artikelWindow = new ArtikelWindow();
            artikelWindow.ShowDialog();
        }

        private void btnNieuwArtikel_Click(object sender, RoutedEventArgs e)
        {
            ArtikelAanmaken artikelAanmaken = new ArtikelAanmaken();
            artikelAanmaken.ShowDialog();
        }

        private void btnGebruikers_Click(object sender, RoutedEventArgs e)
        {
            GebruikersLijst gebruikersLijst = new GebruikersLijst();
            gebruikersLijst.ShowDialog();
        }
    }
}
