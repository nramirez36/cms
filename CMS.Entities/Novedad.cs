using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CMS.Entities
{
    [Serializable]
    public class Novedad
    {
        public int nov_identificador { get; set; }
        public string mensaje { get; set; }
        public DateTime fechaAlta { get; set; }
        public DateTime fechaBaja { get; set; }
        public DateTime fechaModificacion { get; set; }
        public byte[] archivo { get; set; }
        public string mensaje_web { get; set; }
        public string  titulo { get; set; }
        public int idUsuAlta { get; set; }
        public int idUsuBaja { get; set; }
        public int idUsuMod { get; set; }
        public int tipo { get; set; }
        //public bool es_html { get; set; }
        public string archivo_ext { get; set; }
        public string archivo_nombre { get; set; }
        public int archivo_tam_kb { get; set; }
        public string descripcion_breve { get; set; }
        public bool es_imagen { get; set; }
        public bool es_historica { get; set; }
    }
}
