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
    public partial class NovedadesABM : System.Web.UI.Page
    {
        #region Variables
        private List<Novedad> novedadesMostrar = new List<Novedad>();
        private Novedad novedadSeleccionada;
        private int idSeleccionado = 0;
        private int operacionSeleccionada = 0;
        private enum OPERACION
        {
            ALTA = 1,
            MODIFICACION = 2
        }
        #endregion
        #region Propiedades
        public string PathToCheck
        {
            get { return (string)ViewState["PathToCheck"]; }
            set { ViewState["PathToCheck"] = value; }
        }
        public string PathNombreArchivo
        {
            get { return (string)ViewState["PathNombreArchivo"]; }
            set { ViewState["PathNombreArchivo"] = value; }
        }
        #endregion
        #region Page_Load
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //novedadesMostrar = GestorNovedades.LoadAll();
                //gvListadoNovedades.DataSource = null;
                //gvListadoNovedades.DataSource = novedadesMostrar;
                //gvListadoNovedades.DataBind();
                cargarGrillaAll();
                guardarDatosTemporales();
            }
            else
            {
                cargarDatosTemporales();
                if (novedadesMostrar != null && novedadesMostrar.Count > 0)
                {
                    //gvListadoNovedades.DataSource = null;
                    //gvListadoNovedades.DataSource = novedadesMostrar;
                    //gvListadoNovedades.DataBind();
                    cargarGrillaSeleccionada();
                    lblMensajeAdvertencia.Visible = false;
                }
                else
                {
                    lblMensajeAdvertencia.Visible = true;
                    lblMensajeAdvertencia.Text = "No se encontraron novedades...";
                }
            }
        }
        #endregion
        #region Eventos
        protected void gvListadoNovedades_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (gvListadoNovedades.SelectedIndex > -1)
            {
                lnkModificarNovedad.Enabled = true;
                lnkQuitarNovedad.Enabled = true;
                //int idSeleccionado = Convert.ToInt32(gvListadoNovedades.SelectedRow.Cells[0].Text);
                int idSeleccionado = Convert.ToInt32(gvListadoNovedades.SelectedDataKey[0]);
                if (idSeleccionado != 0)
                {
                    novedadSeleccionada = GestorNovedades.Load(idSeleccionado);
                    limpiarPanelNovedad();
                    mostrarNovedad(novedadSeleccionada);
                }
                guardarDatosTemporales();
            }
        }

        protected void gvListadoNovedades_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvListadoNovedades.PageIndex = e.NewPageIndex;
            gvListadoNovedades.DataBind();
        }

        protected void lnkAgregarNovedad_Click(object sender, EventArgs e)
        {
            operacionSeleccionada = (int)OPERACION.ALTA;
            limpiarPanelNovedad();
            habilitarBotonesABM(false);
            lblOperacion.Text = "Agregando...";
            habilitarPanelNovedad(true);
            habilitarTablaNovedades(false);
            idSeleccionado = 0;
            guardarDatosTemporales();
        }

        protected void lnkModificarNovedad_Click(object sender, EventArgs e)
        {
            operacionSeleccionada = (int)OPERACION.MODIFICACION;
            lblOperacion.Text = "Modificando...";
            idSeleccionado = Convert.ToInt32(gvListadoNovedades.SelectedDataKey[0]);
            habilitarBotonesABM(false);
            habilitarPanelNovedad(true);
            habilitarTablaNovedades(false);
            guardarDatosTemporales();
        }

        protected void lnkQuitarNovedad_Click(object sender, EventArgs e)
        {
            if (gvListadoNovedades.SelectedIndex > -1)
            {
                idSeleccionado = Convert.ToInt32(gvListadoNovedades.SelectedDataKey[0]);
                if (idSeleccionado != 0)
                {
                    novedadSeleccionada = new Novedad();
                    novedadSeleccionada.nov_identificador = idSeleccionado;
                    if (GestorNovedades.NovedadDeleteLogico(novedadSeleccionada) > 0)
                    {
                        lblMensajeAdvertencia.Text = "Novedad dada de baja con éxito";
                    }
                    else
                    {
                        lblMensajeAdvertencia.Text = "No ha pudo quitar novedad";
                    }
                }
                else
                {
                    lblMensajeAdvertencia.Text = "No ha seleccionado ninguna novedad";
                }
            }
            else
            {
                lblMensajeAdvertencia.Text = "No ha seleccionado ninguna novedad";
            }
        }

        protected void btnSubirArchivo_Click(object sender, EventArgs e)
        {

        }

        protected void lnkAceptarCambio_Click(object sender, EventArgs e)
        {
            string msgAdvertencia = "";
            if (validarActualizacion(ref msgAdvertencia))
            {
                novedadSeleccionada = obtenerNovedad();
                if (operacionSeleccionada == (int)OPERACION.ALTA)
                {
                    if (GestorNovedades.Save(novedadSeleccionada) != null)
                    {
                        lblMensajeAdvertencia.Text = "Se dio de Alta correctamente la Novedad";
                        habilitarPanelNovedad(false);
                        limpiarPanelNovedad();
                        habilitarTablaNovedades(true);
                        habilitarBotonesABM(true);
                        eventoBuscarNovedades();
                    }
                    else
                    {
                        lblMensajeAdvertencia.Text = "No se pudo dar de alta novedad";
                    }
                }
                else
                {
                    if (operacionSeleccionada == (int)OPERACION.MODIFICACION)
                    {
                        novedadSeleccionada.nov_identificador = idSeleccionado;
                        
                        if (GestorNovedades.Update(novedadSeleccionada) > 0)
                        {
                            lblMensajeAdvertencia.Text = "Se modificó correctamente la Novedad";
                            habilitarPanelNovedad(false);
                            limpiarPanelNovedad();
                            habilitarTablaNovedades(true);
                            habilitarBotonesABM(true);
                            eventoBuscarNovedades();
                        }
                        else
                        {
                            lblMensajeAdvertencia.Text = "No se pudo modificar novedad";
                        }
                    }
                }
            }
            else
            {
                lblMensajeAdvertencia.Text = msgAdvertencia;
            }
        }

        protected void lnkCancelarCambio_Click(object sender, EventArgs e)
        {

        }

        protected void btnBuscarNovedad_Click(object sender, EventArgs e)
        {
            eventoBuscarNovedades();
        }

        #endregion
        #region Metodos

        private void eventoBuscarNovedades()
        {
            novedadesMostrar = new List<Novedad>();
            gvListadoNovedades.SelectedIndex = -1;
            limpiarPanelNovedad();
            novedadesMostrar = GestorNovedades.NovedadLoadAllByDescripcion(txtDescripcionFiltro.Text.Trim());
            if (novedadesMostrar != null && novedadesMostrar.Count > 0)
            {
                gvListadoNovedades.DataSource = null;
                gvListadoNovedades.DataSource = novedadesMostrar;
                gvListadoNovedades.DataBind();
                lblMensajeAdvertencia.Visible = false;
            }
            else
            {
                gvListadoNovedades.DataSource = null;
                gvListadoNovedades.DataBind();
            }
            guardarDatosTemporales();
        }

        private void limpiarPanelNovedad()
        {
            lblOperacion.Text = "";
            txtMensaje.Text = "";
            txtTitulo.Text = "";
            UploadStatusLabel.Text = "";
            txtDescripcionBreve.Text = "";
        }

        private void habilitarTablaNovedades(bool habilitar)
        {
            gvListadoNovedades.Enabled = habilitar;
        }

        private void habilitarPanelNovedad(bool habilitar)
        {
            txtMensaje.Enabled = habilitar;
            txtTitulo.Enabled = habilitar;
            rbHistorica.Enabled = habilitar;
            rbImagen.Enabled = habilitar;
            rbHtml.Enabled = habilitar;
            fileNovedad.Enabled = habilitar;
            btnSubirArchivo.Enabled = habilitar;
            lnkAceptarCambio.Enabled = habilitar;
            lnkCancelarCambio.Enabled = habilitar;
            txtDescripcionBreve.Enabled = habilitar;
        }

        private void habilitarBotonesABM(bool habilitar)
        {
            lnkAgregarNovedad.Enabled = habilitar;
            lnkModificarNovedad.Enabled = habilitar;
            lnkQuitarNovedad.Enabled = habilitar;
        }

        private void guardarDatosTemporales()
        {
            ViewState.Add("novedadesMostrar", novedadesMostrar);
            ViewState.Add("idSeleccionado", idSeleccionado);
            ViewState.Add("operacionSeleccionada", operacionSeleccionada);
        }

        private void cargarDatosTemporales()
        {
            if (ViewState["novedadesMostrar"] != null)
                novedadesMostrar = (List<Novedad>)ViewState["novedadesMostrar"];

            if (ViewState["idSeleccionado"] != null)
                idSeleccionado = (int)ViewState["idSeleccionado"];

            if (ViewState["operacionSeleccionada"] != null)
                operacionSeleccionada = (int)ViewState["operacionSeleccionada"];
        }

        private void mostrarNovedad(Novedad novedadSeleccionada)
        {
            txtTitulo.Text = novedadSeleccionada.titulo;
            txtMensaje.Text = novedadSeleccionada.mensaje_web;
            //if (novedadSeleccionada.es_html)
            //    rbHtml.Checked = true;
            //else
            //    rbHtml.Checked = false;
            if (novedadSeleccionada.es_historica)
                rbHistorica.Checked = true;
            else
                rbHistorica.Checked = false;
            txtDescripcionBreve.Text = novedadSeleccionada.descripcion_breve;

        }

        private void cargarGrillaAll()
        {
            novedadesMostrar = GestorNovedades.LoadAll();
            gvListadoNovedades.DataSource = null;
            gvListadoNovedades.DataSource = novedadesMostrar;
            string[] claves = { "nov_identificador" };
            gvListadoNovedades.DataKeyNames = claves;
            gvListadoNovedades.DataBind();
        }
        private void cargarGrillaSeleccionada()
        {
            gvListadoNovedades.DataSource = null;
            gvListadoNovedades.DataSource = novedadesMostrar;
            string[] claves = { "nov_identificador" };
            gvListadoNovedades.DataKeyNames = claves;
            gvListadoNovedades.DataBind();
        }
        private Novedad obtenerNovedad()
        {
            Novedad novedad = new Novedad();
            novedad.mensaje_web = txtMensaje.Text;
            novedad.titulo = txtTitulo.Text;
            novedad.mensaje = novedad.titulo + " - " + novedad.mensaje_web;
            //novedad.es_html = rbHtml.Checked;
            novedad.es_historica = rbHistorica.Checked;
            novedad.es_imagen = rbImagen.Checked;
            novedad.descripcion_breve = txtDescripcionBreve.Text;

            if (UploadStatusLabel.Text == "Archivo agregado correctamente" && PathToCheck != null && PathToCheck != "")
            {
                novedad.archivo = Tools.ConvertFileToByte(PathToCheck);
                novedad.archivo_ext = System.IO.Path.GetExtension(PathNombreArchivo);
                novedad.archivo_nombre = PathNombreArchivo.Split('.')[0];
                novedad.archivo_tam_kb = (novedad.archivo.Length / 1024);
            }
            return novedad;
        }
        private bool validarActualizacion(ref string msgAdvertencia)
        {
            bool rta = true;
            if (txtTitulo.Text == "")
            {
                rta = false;
                msgAdvertencia += "> Ingrese título\n";
            }

            if (txtMensaje.Enabled && txtMensaje.Text == "")
            {
                rta = false;
                msgAdvertencia += "> Ingrese mensaje\n";
            }

            return rta;
        }
        #endregion
    }
}