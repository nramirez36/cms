using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CMS.Entities;
using CMS.DL;
namespace CMS.BL
{
    public class GestorNovedades
    {
        public static Novedad Load(int id)
        {
            return Novedades.Load(id);
        }
        public static byte[] LoadArchivo(int id)
        {
            return Novedades.LoadArchivo(id);
        }
        public static List<Novedad> LoadAll()
        {
            return Novedades.LoadAll();
        }
        public static byte[] ConvertBlobToByte(string sql)
        {
            return Novedades.ConvertBlobToByte(sql);
        }
        public static Novedad Save(Novedad nov)
        {
            return Novedades.Save(nov);
        }
        public static List<Novedad> NovedadLoadAllByDescripcion(string descripcion)
        {
            return Novedades.NovedadLoadAllByDescripcion(descripcion);
        }
        public static int NovedadDeleteLogico(Novedad nov)
        {
            return Novedades.Delete(nov);
        }
        public static int Update(Novedad nov)
        {
            return Novedades.Update(nov);
        }
    }
}
