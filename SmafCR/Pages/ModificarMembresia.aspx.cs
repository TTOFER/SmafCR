using SmafCR.DbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmafCR.Pages
{
    public partial class ModificarMembresia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                LlenarListaClientes();

                CargarInformacionMembresia();
            }
        }


        private void CargarInformacionMembresia()
        {
            int idMembresia = Convert.ToInt32(Request.QueryString["id"]);
            TxtMembresiaID.Text = idMembresia.ToString();

            try
            {
                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    var datosMembresia = db.SPMembresiaConsultarPorID(idMembresia).FirstOrDefault();

                    if (datosMembresia != null)
                    {
                        string idCliente = datosMembresia.ClienteID.ToString();
                        DdlClientes.Items.FindByValue(idCliente).Selected = true;

                        TxtFechaInicio.Text = datosMembresia.Fecha_Inicio.ToString("yyyy/MM/dd");
                        TxtFechaFin.Text = datosMembresia.Fecha_Fin.ToString("yyyy/MM/dd");
                        TxtMonto.Text = datosMembresia.Monto.ToString("").Split('.')[0];
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("ErrorMembresia.aspx");
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
                    ListaClientes.AddRange(query);

                    DdlClientes.DataTextField = "Text";
                    DdlClientes.DataValueField = "Value";

                    DdlClientes.DataSource = ListaClientes;
                    DdlClientes.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/ErrorMembresia.aspx");
            }
        }

        protected void BtnModificarMembresia_Click(object sender, EventArgs e)
        {
            try
            {
                int idMembresia = Convert.ToInt32(TxtMembresiaID.Text.Trim());

                int idCliente = Convert.ToInt32(DdlClientes.SelectedItem.Value);

                DateTime fechaInicio = DateTime.Parse(TxtFechaInicio.Text.Trim());
                DateTime fechaFin = DateTime.Parse(TxtFechaFin.Text.Trim());
                int monto = Convert.ToInt32(TxtMonto.Text.Trim());

                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    db.SPMembresiaModificar(idMembresia, idCliente, fechaInicio, fechaFin, monto);
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/ErrorMembresia.aspx");
            }

            Response.Redirect("ExitoModificarMembresia.aspx");
        }

        protected void BtnEliminarMembresia_Click(object sender, EventArgs e)
        {
            try
            {
                int idMembresia = Convert.ToInt32(TxtMembresiaID.Text.Trim());

                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    db.SPMembresiaEliminar(idMembresia);
                }
            }
            catch (Exception)
            {

                Response.Redirect("ErrorMembresia.aspx");
            }

            Response.Redirect("ExitoEliminarMembresia.aspx");
        }
    }
}