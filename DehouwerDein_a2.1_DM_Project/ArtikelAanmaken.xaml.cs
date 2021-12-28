﻿using DehouwerDein_a2._1_DM_Project.DAL;
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
                nieuwsArtikel.id = 3;
                nieuwsArtikel.titel = tbTitel.Text;
                nieuwsArtikel.artikel = tbArtikel.Text;
                nieuwsArtikel.cover = tbUpload.Text;

                Categorie categorie = cbCategorie.SelectedItem as Categorie;

                nieuwsArtikel.categorieId = categorie.id;

                Auteur auteur = new Auteur
                {

                    // Id wordt vast ingesteld om het project te vereenvoudigen...
                    gebruikerId = 1,
                    nieuwsArtikelId = nieuwsArtikel.id
                };



                nieuwsArtikel.aangemaaktOp = DateTime.Now;
                nieuwsArtikel.plusArtikel = false;
                nieuwsArtikel.samenvatting = tbArtikel.Text;

                DatabaseOperations.ToevoegenArtikel(nieuwsArtikel);
                DatabaseOperations.ToevoegenAuteur(auteur);

                MessageBox.Show("Done!");
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
