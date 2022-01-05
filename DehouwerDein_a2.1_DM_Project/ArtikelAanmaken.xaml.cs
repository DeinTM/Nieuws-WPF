using DehouwerDein_a2._1_DM_Project.DAL;
using DehouwerDein_a2._1_DM_Project.Model;
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
    /// Interaction logic for ArtikelAanmaken.xaml
    /// </summary>
    public partial class ArtikelAanmaken : Window
    {
        public ArtikelAanmaken()
        {
            InitializeComponent();
        }

        private void btnUpload_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnPost_Click(object sender, RoutedEventArgs e)
        {
            NieuwsArtikel nieuwsArtikel = new NieuwsArtikel();

            string foutmelding = Valideer("tbTitel");
            foutmelding += Valideer("tbArtikel");
            foutmelding += Valideer("tbUpload");
            foutmelding += Valideer("cbCategorie");

            if (string.IsNullOrWhiteSpace(foutmelding))
            {

            

                nieuwsArtikel.titel = tbTitel.Text;
                nieuwsArtikel.artikel = tbArtikel.Text;
                nieuwsArtikel.cover = tbUpload.Text;
                

                Categorie categorie = cbCategorie.SelectedItem as Categorie;

                nieuwsArtikel.categorieId = categorie.id;
                nieuwsArtikel.aangemaaktOp = DateTime.Now;
                nieuwsArtikel.plusArtikel = false;
                nieuwsArtikel.samenvatting = tbArtikel.Text;

                /*if (nieuwsArtikel.IsGeldig())
                {

                }*/

                int artikelOk = DatabaseOperations.ToevoegenArtikel(nieuwsArtikel);

                Auteur auteur = new Auteur
                {

                    // Id gaat werken met randoms omdat er geen identity is voor een gebruiker
                    gebruikerId = 2,
                    nieuwsArtikelId = nieuwsArtikel.id
                };

                int auteurOk = DatabaseOperations.ToevoegenAuteur(auteur);

                if (artikelOk > 0 && auteurOk > 0)
                {
                    MessageBox.Show("Artikel is toegevoegd!");
                    Wissen();
                }
                else
                {
                    MessageBox.Show("Artikel is niet toegevoegd!");
                }
            }
            else
            {
                MessageBox.Show(foutmelding);
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
            cbCategorie.ItemsSource = DatabaseOperations.OphalenCategorieen();
            cbCategorie.DisplayMemberPath = "naam";
        }


        private void Wissen()
        {
            tbTitel.Text = "";
            tbArtikel.Text = "";
            tbUpload.Text = "";
            cbCategorie.SelectedIndex = -1;
        }

        private string Valideer(string columnName)
        {
            if (columnName == "tbTitel" && string.IsNullOrWhiteSpace(tbTitel.Text))
            {
                return "Titel mag niet leeg zijn!" + Environment.NewLine;
            }
            if (columnName == "tbTitel" && tbTitel.Text.Length < 5)
            {
                return "Titel moet meer dan 5 karakters lang zijn!" + Environment.NewLine;
            }
            if (columnName == "tbArtikel" && string.IsNullOrWhiteSpace(tbArtikel.Text))
            {
                return "Titel mag niet leeg zijn!" + Environment.NewLine;
            }
            if (columnName == "tbArtikel" && tbArtikel.Text.Length < 25)
            {
                return "Het artikel moet meer dan 25 karakters bevatten!" + Environment.NewLine;
            }
            if (columnName == "tbUpload" && string.IsNullOrWhiteSpace(tbUpload.Text))
            {
                return "Er moet een afbeelding geüpload worden!" + Environment.NewLine;
            }
            if (columnName == "cbCategorie" && cbCategorie.SelectedItem == null)
            {
                return "Selecteer een categorie!" + Environment.NewLine;
            }
            return "";
        }


    }
}
