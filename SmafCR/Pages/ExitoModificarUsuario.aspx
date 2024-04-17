<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExitoModificarUsuario.aspx.cs" Inherits="SmafCR.Pages.ExitoModificarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Proceso completado con éxito</h2>

    <div class="alert-success">
        <p>Se ha modificado correctamente el usuario</p>
    </div>

    <div>
        <a href="ListaUsuarios.aspx">REGRESAR</a>
    </div>
</asp:Content>
