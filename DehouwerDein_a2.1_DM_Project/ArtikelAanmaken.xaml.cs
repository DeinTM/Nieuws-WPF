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
            try
            {
                
                nieuwsArtikel.titel = tbTitel.Text;
                nieuwsArtikel.artikel = tbArtikel.Text;
                nieuwsArtikel.cover = tbUpload.Text;
                

                Categorie categorie = cbCategorie.SelectedItem as Categorie;

                nieuwsArtikel.categorieId = categorie.id;
                nieuwsArtikel.aangemaaktOp = DateTime.Now;
                nieuwsArtikel.plusArtikel = false;
                nieuwsArtikel.samenvatting = tbArtikel.Text;

               /* if (nieuwsArtikel.isGeldig())
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
                    MessageBox.Show("Done!");
                }
                else
                {
                    MessageBox.Show("Oeps!");
                }

                
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.ToString());
            }
            



        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
            cbCategorie.ItemsSource = DatabaseOperations.OphalenCategorieen();
            cbCategorie.DisplayMemberPath = "naam";
        }
    }
}
