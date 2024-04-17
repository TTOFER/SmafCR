using SmafCR.DbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmafCR.Pages
{
    public partial class SmafCRPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //cargar lista con el SP
                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    var Lista = db.SPUsuariosListar();

                    GvListaUsuarios.DataSource = Lista;
                    GvListaUsuarios.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
            }

        }
    }
}