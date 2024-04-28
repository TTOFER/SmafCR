using SmafCR.DbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmafCR.Pages
{
    public partial class ListaInstructores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //cargar lista
                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    var ListaInstructores = db.SPInstructoresListar();

                    GvListaInstructores.DataSource = ListaInstructores;
                    GvListaInstructores.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
        }
    }
}