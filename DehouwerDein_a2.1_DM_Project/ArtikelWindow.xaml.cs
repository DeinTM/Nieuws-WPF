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
using System.Windows.Shapes;

namespace DehouwerDein_a2._1_DM_Project
{
    /// <summary>
    /// Interaction logic for ArtikelWindow.xaml
    /// </summary>
    public partial class ArtikelWindow : Window
    {
        public int ArtikelId { get; set; }
        public ArtikelWindow(int artikelId)
        {
            InitializeComponent();
            ArtikelId = artikelId;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            NieuwsArtikel data = DatabaseOperations.OphalenNieuwsArtikel(ArtikelId);

            Titel.Text = data.titel;
            Artikel.Text = data.artikel;
            Afbeelding.Source = new BitmapImage(new Uri(data.cover));
        }
    }
}
