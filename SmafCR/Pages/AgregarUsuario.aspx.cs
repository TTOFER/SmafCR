using SmafCR.DbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmafCR.Pages
{
    public partial class UsuarioAgregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LlenarListaRolesUsuario();
            }
        }

        private void LlenarListaRolesUsuario()
        {
            try
            {
                //lista para almacenar los datos
                var ListaRolesUsuario = new List<ListItem>();

                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    //invocar el SP y mostrar lista en dropdownlist
                    var query = (from lr in db.SPUsuarioRolListar()
                                 select new ListItem
                                 {
                                     Value = lr.id.ToString(),
                                     Text = lr.descrip
                                 }
                                 ).ToList();
                    ListaRolesUsuario.AddRange(query);

                    DdlRolesUsuario.DataTextField = "Text";
                    DdlRolesUsuario.DataValueField = "Value";

                    DdlRolesUsuario.DataSource = ListaRolesUsuario;
                    DdlRolesUsuario.DataBind();

                    DdlRolesUsuario.ClearSelection();
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
        }
        protected void BtnAgregarUsuario_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //Capturar datos digitados
                string nombre = TxtNombreUsuario.Text.Trim();
                string email = TxtEmailUsuario.Text.Trim();
                string telefono = TxtTelefonoUsuario.Text.Trim();
                string contrasennia = TxtContrasenniaUsuario.Text.Trim();

                int idRol = Convert.ToInt32(DdlRolesUsuario.SelectedItem.Value);

                try
                {
                    using (PV_SmafCREntities db = new PV_SmafCREntities())
                    {
                        db.SPUsuarioAgregar(nombre, email, telefono, contrasennia, idRol);
                    }
                }
                catch (Exception)
                {
                    Response.Redirect("~/Pages/Error.aspx");
                }

                Response.Redirect("~/Pages/ExitoAgregarUsuario.aspx");
            }
            else
            {
                Response.Redirect("~/Pages/Error.aspx");
            }

        }
    }
}