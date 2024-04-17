<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="SmafCR.Pages.UsuarioAgregar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>AGREGAR USUARIO</h2>

    <div>
        <h3>Ingrese los siguientes datos:</h3>

        <div>
            <span>Nombre</span>
            <asp:TextBox ID="TxtNombreUsuario" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVNombre" runat="server"
                ControlToValidate="TxtNombreUsuario" ErrorMessage="El nombre es requerido"
                CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div>
            <span>Correo electrónico</span>
            <asp:TextBox ID="TxtEmailUsuario" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVEmail" runat="server"
                ControlToValidate="TxtEmailUsuario" ErrorMessage="El Correo es requerido"
                CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div>
            <span>Teléfono</span>
            <asp:TextBox ID="TxtTelefonoUsuario" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="TxtContrasenniaUsuario" ErrorMessage="La contraseña es requerida"
                CssClass="text-danger" Enabled="false"></asp:RequiredFieldValidator>
        </div>

        <div>
            <span>Contraseña</span>
            <asp:TextBox ID="TxtContrasenniaUsuario" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVContrasennia" runat="server"
                ControlToValidate="TxtContrasenniaUsuario" ErrorMessage="La contraseña es requerida"
                CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div style="margin-bottom: 10px;">
            <span>Rol de Usuario</span>
            <asp:DropDownList ID="DdlRolesUsuario" runat="server" Enabled="true"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RFVrolUsuario" runat="server"
                ControlToValidate="DdlRolesUsuario" ErrorMessage="Selecciona un rol de usuario"
                CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div style="margin-bottom: 10px;">
            <asp:Button ID="BtnAgregarUsuario" runat="server"
                Text="AGREGAR USUARIO" BackColor="#006600"
                ForeColor="White" CssClass=" btn btn-primary"
                OnClick="BtnAgregarUsuario_Click" />
        </div>

        <div style="margin-bottom: 10px;">
            <a href="ListaUsuarios.aspx" class="btn btn-danger">Regresar a Lista</a>
        </div>
    </div>
</asp:Content>
