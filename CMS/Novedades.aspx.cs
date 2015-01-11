using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Entities;
using CMS.BL;
namespace CMS
{
    public partial class Novedades : System.Web.UI.Page
    {
        List<Novedad> novedadesMostrar = new List<Novedad>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                novedadesMostrar = GestorNovedades.LoadAll();
                tableNovedades = getTablaDinamica(novedadesMostrar);
            }
        }
        public Table getTablaDinamica(List<Novedad> novedadesRelease)
        {

            TableRow objRow;
            TableCell objCell;
            Label ControlLabel;
            Table tablaDevolver = new Table();

            tableNovedades.Rows.Clear();
            tableNovedades.CssClass = "reference";
            if (novedadesRelease != null)
            {
                for (int i = 0; i < novedadesRelease.Count; i++)
                {
                    objRow = new TableRow();
                    objCell = new TableCell();
                    objCell.ColumnSpan = 2;
                    objCell.HorizontalAlign = HorizontalAlign.Left;
                    ControlLabel = new Label();
                    //ControlLabel.Text = novedadesRelease[i].nov_identificador + " - " + novedadesRelease[i].fechaAlta.ToShortDateString();
                    ControlLabel.Text = "Publicado " + novedadesRelease[i].fechaAlta.ToShortDateString();
                    ControlLabel.CssClass = "novedades";
                    objCell.Controls.Add(ControlLabel);
                    objRow.Cells.Add(objCell);

                    objCell = new TableCell();
                    objCell.HorizontalAlign = HorizontalAlign.Right;

                    //objRow.Cells.Add(objCell);
                    ControlLabel = new Label();
                    ControlLabel.Text = novedadesRelease[i].titulo;
                    ControlLabel.CssClass = "novedades_titulo";
                    objCell.Controls.Add(ControlLabel);

                    //objRow.CssClass = "style5";
                    objRow.CssClass = "box box-style1";
                    tableNovedades.Rows.Add(objRow);
                    objRow = new TableRow();

                    if (novedadesRelease[i].archivo_nombre != null && novedadesRelease[i].archivo_nombre != "")
                    {
                        objCell = new TableCell();
                        Image imagenNovedad2 = new Image();
                        imagenNovedad2.ImageUrl = Tools.getImageSegunExtension(novedadesRelease[i].archivo_ext);// "images/Adobe-PDF-Document-icon.png";
                        imagenNovedad2.Width = Unit.Pixel(32);
                        imagenNovedad2.Height = Unit.Pixel(32);
                        objCell.Controls.Add(imagenNovedad2);
                        LinkButton nombreArchivo = new LinkButton();
                        nombreArchivo.Text = "<br/>Descargar";
                        nombreArchivo.ID = "ar" + novedadesRelease[i].nov_identificador;
                        //nombreArchivo.Click += new EventHandler(getArchivoNovedad);
                        objCell.Controls.Add(nombreArchivo);
                        objRow.Cells.Add(objCell);
                    }
                    else
                    {
                        objCell = new TableCell();
                        Image imagenNovedad = new Image();
                        imagenNovedad.ImageUrl = "images/Ok-icon.png";
                        imagenNovedad.Width = Unit.Pixel(32);
                        imagenNovedad.Height = Unit.Pixel(32);
                        objCell.Controls.Add(imagenNovedad);
                        objRow.Cells.Add(objCell);
                    }
                    objCell = new TableCell();

                    
                    ControlLabel = new Label();
                    //if (!novedadesRelease[i].es_html)
                    //    ControlLabel.Text = novedadesRelease[i].mensaje_web.Replace("\n", "<br/>");
                    //else
                    //{
                    //    ControlLabel.Text = novedadesRelease[i].mensaje_web.Replace("\n", "");
                    //}
                    objCell.Controls.Add(ControlLabel);

                    objRow.Cells.Add(objCell);
                    tableNovedades.Rows.Add(objRow);
                    objRow = new TableRow();
                    tableNovedades.Rows.Add(objRow);
                }
            }
            return tableNovedades;
        }
    }
}