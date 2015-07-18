using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using CMS.Entities;
namespace CMS
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            bind();
        }

        private void bind()
        {
            WSCMS.WSCMS ws = new WSCMS.WSCMS();
            var lst = ws.GetNovedadesAll();
            var items = from item in lst
                        select new { item.nov_identificador, item.titulo, item.descripcion_breve };
            this.lvItems.DataSource = lst;
            lvItems.DataBind();
        }


    }
}