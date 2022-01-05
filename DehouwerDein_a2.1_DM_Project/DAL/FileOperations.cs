using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DehouwerDein_a2._1_DM_Project.DAL
{
    class FileOperations
    {
        public static void FoutLoggen(Exception fout)
        {
            using (StreamWriter writer = new StreamWriter("foutenbestand.txt", true))
            {

                writer.WriteLine(DateTime.Now.ToString("HH:mm:ss tt"));
                writer.WriteLine(fout.GetType().Name);
                writer.WriteLine(fout.Message);
                writer.WriteLine(fout.StackTrace);
                writer.WriteLine(new String('-', 80));
                writer.WriteLine();
                writer.WriteLine(fout.InnerException.StackTrace);
                writer.WriteLine(fout.InnerException.InnerException);
                writer.WriteLine();
            }
        }
    }
}
