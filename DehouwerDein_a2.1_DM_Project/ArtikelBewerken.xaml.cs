using DehouwerDein_a2._1_DM_Project.DAL;
using DehouwerDein_a2._1_DM_Project.Model;
using Microsoft.Win32;
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
    /// Interaction logic for ArtikelBewerken.xaml
    /// </summary>
    public partial class ArtikelBewerken : Window
    {

        private string fullPath;
        private BitmapImage image;

        public ArtikelBewerken()
        {
            InitializeComponent();
        }

        private void btnUploadBewerken_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog op = new OpenFileDialog();
            op.Title = "Selecteer een afbeelding";
            op.Filter = "All supported graphics|*.jpg;*.jpeg;*.png|" +
              "JPEG (*.jpg;*.jpeg)|*.jpg;*.jpeg|" +
              "Portable Network Graphic (*.png)|*.png";
            if (op.ShowDialog() == true)
            {
                image = new BitmapImage(new Uri(op.FileName));
                fullPath = op.FileName;
                tbUploadBewerken.Text = fullPath;
            }
        }

        private void btnPostBewerken_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            NieuwsArtikel data = DatabaseOperations.OphalenNieuwsArtikel(7);
            tbTitelBewerken.Text = data.titel;
            tbArtikelBewerken.Text = data.artikel;
            tbUploadBewerken.Text = data.cover;
            /*Categorie categorie = data.categorieId as Categorie;
            cbCategorieBewerken.SelectedIndex = ;*/
        }
    }
}
