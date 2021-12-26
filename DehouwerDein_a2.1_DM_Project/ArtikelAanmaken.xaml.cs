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
                nieuwsArtikel.id = 1;
                nieuwsArtikel.titel = tbTitel.Text;
                nieuwsArtikel.artikel = tbArtikel.Text;
                nieuwsArtikel.cover = tbUpload.Text;
                nieuwsArtikel.categorieId = 1;
                //nieuwsArtikel.Auteur = 1;
                nieuwsArtikel.aangemaaktOp = DateTime.Now;
                nieuwsArtikel.plusArtikel = false;
                nieuwsArtikel.samenvatting = tbArtikel.Text;

                DatabaseOperations.ToevoegenArtikel(nieuwsArtikel);

                MessageBox.Show("Done!");
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.ToString());
            }
            



        }
    }
}
