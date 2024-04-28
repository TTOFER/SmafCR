using SmafCR.DbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmafCR.Pages
{
    public partial class ListaMembresias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    var Lista = db.SPMembresiasListar();

                    GvListaMembresias.DataSource = Lista;
                    GvListaMembresias.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Redirect("ErrorMembresia.aspx");
            }

        }
    }
}