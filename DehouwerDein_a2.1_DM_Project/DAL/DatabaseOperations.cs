using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DehouwerDein_a2._1_DM_Project.DAL
{
    public static class DatabaseOperations
    {

        // Leesopdrachten
        public static List<Gebruiker> OphalenGebruikers()
        {
            using (NieuwsEntities entities = new NieuwsEntities())
            {
                var query = entities.Gebruikers;
                return query.ToList();
            }
        }

        public static List<Categorie> OphalenCategorieen()
        {
            using (NieuwsEntities entities = new NieuwsEntities())
            {
                var query = entities.Categories;
                return query.ToList();
            }
        }

        public static List<NieuwsArtikel> OphalenNieuwsArtikelViaID(int artikelID)
        {
            using (NieuwsEntities entities = new NieuwsEntities())
            {
                return entities.NieuwsArtikels
                    .Where(x => x.id == artikelID)
                    .ToList();
            }
        }

        public static List<NieuwsArtikel> OphalenNieuwsArtikelen()
        {
            using (NieuwsEntities entities = new NieuwsEntities())
            {
                return entities.NieuwsArtikels
                    .Include(x => x.Categorie)
                    .ToList();
            }
        }

        public static NieuwsArtikel OphalenNieuwsArtikel(int artikelID)
        {
            using (NieuwsEntities entities = new NieuwsEntities())
            {
                return entities.NieuwsArtikels
                    .Where(x => x.id == artikelID).FirstOrDefault();
            }
        }

        public static Auteur OphalenAuteur(int artikelID)
        {
            using (NieuwsEntities entities = new NieuwsEntities())
            {
                return entities.Auteurs
                    .Where(x => x.nieuwsArtikelId == artikelID).FirstOrDefault();
            }
        }

        public static List<Reactie> OphalenReactiesViaID(int artikelID)
        {
            using (NieuwsEntities entities = new NieuwsEntities())
            {
                return entities.Reacties
                    .Where(x => x.nieuwsArtikelId == artikelID)
                    .Include(y => y.Gebruiker)
                    .ToList();
            }
        }

        // Filteropdrachten
        public static List<Gebruiker> ZoekenGebruikersMetVoornaam(string zoekopdracht)
        {
            using (NieuwsEntities entities = new NieuwsEntities())
            {
                var query = entities.Gebruikers
                     .Where(x => x.voornaam == zoekopdracht)
                     .OrderBy(y => y.voornaam);
                return query.ToList();
            }
        }

        public static List<Gebruiker> ZoekenGebruikersMetAchternaam(string zoekopdracht)
        {
            using (NieuwsEntities entities = new NieuwsEntities())
            {
                var query = entities.Gebruikers
                     .Where(x => x.naam == zoekopdracht)
                     .OrderBy(y => y.naam);
                return query.ToList();
            }
        }

        public static List<Gebruiker> ZoekenGebruikersMetEmail(string zoekopdracht)
        {
            using (NieuwsEntities entities = new NieuwsEntities())
            {
                var query = entities.Gebruikers
                     .Where(x => x.email == zoekopdracht)
                     .OrderBy(y => y.email);
                return query.ToList();
            }
        }

        // Creëeropdrachten

        public static int ToevoegenArtikel(NieuwsArtikel nieuwsArtikel)
        {
            try
            {
                using (NieuwsEntities entities = new NieuwsEntities())
                {

                    entities.NieuwsArtikels.Add(nieuwsArtikel);
                    return entities.SaveChanges();

                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        public static int ToevoegenAuteur(Auteur auteur)
        {
            try
            {
                using (NieuwsEntities entities = new NieuwsEntities())
                {

                    entities.Auteurs.Add(auteur);
                    return entities.SaveChanges();

                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        // Aanpassingopdrachten
        public static int AanpassenNieuwsArtikel(NieuwsArtikel nieuwsArtikel)
        {
            try
            {
                using (NieuwsEntities nieuwsEntities = new NieuwsEntities())
                {

                    nieuwsEntities.Entry(nieuwsArtikel).State = EntityState.Modified;
                    return nieuwsEntities.SaveChanges();

                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        // Verwijderopdrachten

        public static int VerwijderenNieuwsArtikel(NieuwsArtikel nieuwsArtikel)
        {
            try
            {
                using (NieuwsEntities nieuwsEntities = new NieuwsEntities())
                {

                    nieuwsEntities.Entry(nieuwsArtikel).State = EntityState.Deleted;
                    return nieuwsEntities.SaveChanges();

                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        public static int VerwijderenAuteur(Auteur auteur)
        {
            try
            {
                using (NieuwsEntities nieuwsEntities = new NieuwsEntities())
                {

                    nieuwsEntities.Entry(auteur).State = EntityState.Deleted;
                    return nieuwsEntities.SaveChanges();

                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }
    }
}
