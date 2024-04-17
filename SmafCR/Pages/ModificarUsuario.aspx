<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarUsuario.aspx.cs" Inherits="SmafCR.Pages.ModificarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>MODIFICAR USUARIO</h2>

    <div>
        <div>
            <span>Código Usuario</span>
            <asp:TextBox ID="TxtUsuarioID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>

        <div>
            <span>Nombre Usuario</span>
            <asp:TextBox ID="TxtNombreUsuario" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div>
            <span>Correo Electrónico</span>
            <asp:TextBox ID="TxtEmailUsuario" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div>
            <span>Teléfono Usuario</span>
            <asp:TextBox ID="TxtTelefonoUsuario" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div style="margin-bottom: 10px;">
            <span>Contraseña (Opcional)</span>
            <asp:TextBox ID="TxtContrasenniaUsuario" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div style="margin-bottom: 10px;">
            <span>Rol de Usuario</span>
            <asp:DropDownList ID="DdlRolesUsuario" runat="server" Enabled="true"></asp:DropDownList>
        </div>

        <div style="margin-bottom: 10px;">
            <asp:Button ID="BtnModificarUsuario" runat="server" Text="MODIFICAR USUARIO"
                CssClass="btn btn-primary" OnClick="BtnModificarUsuario_Click" />

            <asp:Button ID="BtnEliminarUsuario" runat="server" Text="ELIMINAR USUARIO" CssClass="btn btn-primary" OnClick="BtnEliminarUsuario_Click" />
        </div>

        <div style="margin-bottom: 10px;">
            <a href="ListaUsuarios.aspx" class="btn btn-danger">Cancelar</a>
        </div>

    </div>
</asp:Content>
