using SmafCR.DbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmafCR.Pages
{
    public partial class AgregarMembresia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LlenarListaClientes();
            }
        }

        private void LlenarListaClientes()
        {
            try
            {
                var ListaClientes = new List<ListItem>();

                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    var query = (from lr in db.SPClientesListar()
                                 select new ListItem
                                 {
                                     Value = lr.ClienteID.ToString(),
                                     Text = lr.Nombre
                                 }
                                 ).ToList();
                    ListaClientes.AddRange( query );

                    DdlClientes.DataTextField = "Text";
                    DdlClientes.DataValueField = "Value";

                    DdlClientes.DataSource = ListaClientes;
                    DdlClientes.DataBind();

                    DdlClientes.ClearSelection();
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/ErrorMembresia.aspx");
            }
        }

        protected void BtnAgregarMembresia_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                int idCliente = Convert.ToInt32(DdlClientes.SelectedItem.Value);
                DateTime fechaInicio = DateTime.Parse(TxtFechaInicio.Text.Trim());
                DateTime fechaFin = DateTime.Parse(TxtFechaFin.Text.Trim());
                int monto = Convert.ToInt32(TxtMonto.Text.Trim());

                try
                {
                    using (PV_SmafCREntities db = new PV_SmafCREntities())
                    {
                        db.SPMembresiaAgregar(idCliente, fechaInicio, fechaFin, monto);
                    }
                }
                catch (Exception)
                {
                    Response.Redirect("~/Pages/ErrorMembresia.aspx");
                }

                Response.Redirect("~/Pages/ExitoAgregarMembresia.aspx");
            }
            else
            {
                Response.Redirect("~/Pages/ErrorMembresia.aspx");
            }
        }
    }
}