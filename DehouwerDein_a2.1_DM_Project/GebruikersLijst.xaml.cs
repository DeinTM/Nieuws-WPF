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
    /// Interaction logic for GebruikersLijst.xaml
    /// </summary>
    public partial class GebruikersLijst : Window
    {
        public GebruikersLijst()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            dataGebruikers.ItemsSource = DatabaseOperations.OphalenGebruikers();
        }

        private void btnZoekOpdrachtVoornaam_Click(object sender, RoutedEventArgs e)
        {
            string foutmelding = Valideer("txtZoekOpdracht");

            if (string.IsNullOrWhiteSpace(foutmelding))
            {
                dataGebruikers.ItemsSource = DatabaseOperations.ZoekenGebruikersMetVoornaam(txtZoekOpdracht.Text);
                Wissen();
            }
            else
            {
                MessageBox.Show(foutmelding);
            }
        }

        private void btnZoekOpdrachtAchternaam_Click(object sender, RoutedEventArgs e)
        {
            string foutmelding = Valideer("txtZoekOpdracht");

            if (string.IsNullOrWhiteSpace(foutmelding))
            {
                dataGebruikers.ItemsSource = DatabaseOperations.ZoekenGebruikersMetAchternaam(txtZoekOpdracht.Text);
                Wissen();
            }
            else
            {
                MessageBox.Show(foutmelding);
            }
        }

        private void btnZoekOpdrachtEmail_Click(object sender, RoutedEventArgs e)
        {
            string foutmelding = Valideer("txtZoekOpdracht");

            if (string.IsNullOrWhiteSpace(foutmelding))
            {
                dataGebruikers.ItemsSource = DatabaseOperations.ZoekenGebruikersMetEmail(txtZoekOpdracht.Text);
                Wissen();
            }
            else
            {
                MessageBox.Show(foutmelding);
            }
        }

        private void Wissen()
        {
            txtZoekOpdracht.Text = "";
        }

        private string Valideer(string columnName)
        {
            return columnName == "txtZoekOpdracht" && string.IsNullOrWhiteSpace(txtZoekOpdracht.Text)
                ? "Zoekopdracht mag niet leeg zijn!" + Environment.NewLine
                : "";
        }

        private void btnVernieuwen_Click(object sender, RoutedEventArgs e)
        {
            dataGebruikers.ItemsSource = DatabaseOperations.OphalenGebruikers();
        }
    }
}
