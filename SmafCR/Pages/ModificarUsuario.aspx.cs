﻿using SmafCR.DbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmafCR.Pages
{
    public partial class ModificarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                LlenarListaRolesUsuario();

                CargarInformacionDeUsuario();

            }
        }

        private void CargarInformacionDeUsuario()
        {
            int idUsuario = Convert.ToInt32(Request.QueryString["id"]);
            TxtUsuarioID.Text = idUsuario.ToString();

            try
            {
                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    var datosUsuario = db.SPUsuarioConsultarPorID(idUsuario).FirstOrDefault();

                    if (datosUsuario != null)
                    {
                        TxtNombreUsuario.Text = datosUsuario.Nombre;
                        TxtTelefonoUsuario.Text = datosUsuario.Telefono;
                        TxtEmailUsuario.Text = datosUsuario.Email;

                        //seleccionar rol que tiene el usuario actualmente
                        string idrol = datosUsuario.UsuarioRolID.ToString();

                        DdlRolesUsuario.Items.FindByValue(idrol).Selected = true;
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Error.aspx");
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

                    //DdlRolesUsuario.ClearSelection();
                }
            }
            catch (Exception)
            {
                Response.Redirect("Error.aspx");
            }
        }

        protected void BtnModificarUsuario_Click(object sender, EventArgs e)
        {
            try
            {

                int idUsuario = Convert.ToInt32(TxtUsuarioID.Text.Trim());
                string nombre = TxtNombreUsuario.Text.Trim();
                string email = TxtEmailUsuario.Text.Trim();
                string telefono = TxtTelefonoUsuario.Text.Trim();

                //string contrasennia = string.Empty;
                string contrasennia = "";

                int idrol = Convert.ToInt32(DdlRolesUsuario.SelectedItem.Value);

                // esto valida que se haya digitado info en el txt
                if (!string.IsNullOrEmpty(TxtContrasenniaUsuario.Text.Trim()))
                {
                    contrasennia = TxtContrasenniaUsuario.Text.Trim();
                }

                //llamamos al sp de modicar usuario
                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    db.SPUsuarioModificar(idUsuario, nombre, email, telefono, contrasennia, idrol);
                }

            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
            }

            Response.Redirect("ExitoModificarUsuario.aspx");
        }

        protected void BtnEliminarUsuario_Click(object sender, EventArgs e)
        {
            try
            {
                int idUsuario = Convert.ToInt32(TxtUsuarioID.Text.Trim());

                using (PV_SmafCREntities db = new PV_SmafCREntities())
                {
                    db.SPUsuarioEliminar(idUsuario);
                }
            }
            catch (Exception)
            {
                Response.Redirect("Error.aspx");
            }

            Response.Redirect("ExitoEliminarUsuario.aspx");
        }
    }
}