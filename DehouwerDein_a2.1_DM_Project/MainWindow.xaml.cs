using DehouwerDein_a2._1_DM_Project.DAL;
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
            icNieuwsOverzicht.ItemsSource = DatabaseOperations.OphalenNieuwsArtikelen();
            
            //DatabaseOperations.OphalenCategorieen()

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

        private void btnBewerken_MouseDown(object sender, MouseButtonEventArgs e)
        {
            
            var artikelId = ((MaterialDesignThemes.Wpf.PackIcon)sender).Tag;
            ArtikelBewerken artikelBewerken = new ArtikelBewerken((int)artikelId);
            artikelBewerken.ShowDialog();
        }

        private void btnLeesMeer_Click(object sender, RoutedEventArgs e)
        {
            var artikelId = ((Button)sender).Tag;
            ArtikelWindow artikelWindow = new ArtikelWindow((int)artikelId);
            artikelWindow.ShowDialog();
        }
    }
}
