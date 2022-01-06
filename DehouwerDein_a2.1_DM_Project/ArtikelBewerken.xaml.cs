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

        private int _artikelId { get; set; }

        public ArtikelBewerken(int artikelId)
        {
            InitializeComponent();
            _artikelId = artikelId;
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

            NieuwsArtikel nieuwsArtikel = DatabaseOperations.OphalenNieuwsArtikel(_artikelId);

            string foutmelding = Valideer("tbTitelBewerken");
            foutmelding += Valideer("tbArtikelBewerken");
            foutmelding += Valideer("tbUploadBewerken");
            foutmelding += Valideer("cbCategorieBewerken");

            if (string.IsNullOrWhiteSpace(foutmelding))
            {

                nieuwsArtikel.titel = tbTitelBewerken.Text;
                nieuwsArtikel.artikel = tbArtikelBewerken.Text;
                nieuwsArtikel.cover = tbUploadBewerken.Text;


                Categorie categorie = cbCategorieBewerken.SelectedItem as Categorie;

                nieuwsArtikel.categorieId = categorie.id;
                nieuwsArtikel.aangemaaktOp = DateTime.Now;
                nieuwsArtikel.plusArtikel = false;
                nieuwsArtikel.samenvatting = tbArtikelBewerken.Text;

                int artikelOk = DatabaseOperations.AanpassenNieuwsArtikel(nieuwsArtikel);

                if (artikelOk > 0)
                {
                    MessageBox.Show("Artikel is bijgewerkt!");
                    
                }
                else
                {
                    MessageBox.Show("Artikel is niet bijgewerkt!");
                }
            }
            else
            {
                MessageBox.Show(foutmelding);
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            NieuwsArtikel data = DatabaseOperations.OphalenNieuwsArtikel(_artikelId);
            tbTitelBewerken.Text = data.titel;
            tbArtikelBewerken.Text = data.artikel;
            tbUploadBewerken.Text = data.cover;
            cbCategorieBewerken.ItemsSource = DatabaseOperations.OphalenCategorieen();
            cbCategorieBewerken.DisplayMemberPath = "naam";
            cbCategorieBewerken.SelectedIndex = data.categorieId - 1;
        }

        private void btnArtikelVerwijderen_Click(object sender, RoutedEventArgs e)
        {
            NieuwsArtikel data = DatabaseOperations.OphalenNieuwsArtikel(_artikelId);
            Auteur auteur = DatabaseOperations.OphalenAuteur(_artikelId);
            int okAuteur = DatabaseOperations.VerwijderenAuteur(auteur);
            int okNieuwsArtikel = DatabaseOperations.VerwijderenNieuwsArtikel(data);
            if (okAuteur > 0 && okNieuwsArtikel > 0)
            {
                btnArtikelVerwijderen.IsEnabled = false;
                btnPostBewerken.IsEnabled = false;
                btnUploadBewerken.IsEnabled = false;
                tbArtikelBewerken.IsEnabled = false;
                tbTitelBewerken.IsEnabled = false;
                tbUploadBewerken.IsEnabled = false;
                cbCategorieBewerken.IsEnabled = false;
                Wissen();
                MessageBox.Show("Artikel is verwijderd!");
            }
            else
            {
                MessageBox.Show("Artikel is niet verwijderd!");
            }
        }

        private void Wissen()
        {
            tbTitelBewerken.Text = "";
            tbArtikelBewerken.Text = "";
            tbUploadBewerken.Text = "";
            cbCategorieBewerken.SelectedIndex = -1;
        }

        private string Valideer(string columnName)
        {
            if (columnName == "tbTitelBewerken" && string.IsNullOrWhiteSpace(tbTitelBewerken.Text))
            {
                return "Titel mag niet leeg zijn!" + Environment.NewLine;
            }
            if (columnName == "tbTitelBewerken" && tbTitelBewerken.Text.Length < 5)
            {
                return "Titel moet meer dan 5 karakters lang zijn!" + Environment.NewLine;
            }
            if (columnName == "tbArtikelBewerken" && string.IsNullOrWhiteSpace(tbArtikelBewerken.Text))
            {
                return "Artikel mag niet leeg zijn!" + Environment.NewLine;
            }
            if (columnName == "tbArtikelBewerken" && tbArtikelBewerken.Text.Length < 25)
            {
                return "Het artikel moet meer dan 25 karakters bevatten!" + Environment.NewLine;
            }
            if (columnName == "tbUploadBewerken" && string.IsNullOrWhiteSpace(tbUploadBewerken.Text))
            {
                return "Er moet een afbeelding geüpload worden!" + Environment.NewLine;
            }
            if (columnName == "cbCategorieBewerken" && cbCategorieBewerken.SelectedItem == null)
            {
                return "Selecteer een categorie!" + Environment.NewLine;
            }
            return "";
        }
    }
}
