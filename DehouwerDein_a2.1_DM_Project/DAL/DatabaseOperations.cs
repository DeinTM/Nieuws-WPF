using System;
using System.Collections.Generic;
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
                //FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        // Aanpassingopdrachten

        // Verwijderopdrachten
    }
}
