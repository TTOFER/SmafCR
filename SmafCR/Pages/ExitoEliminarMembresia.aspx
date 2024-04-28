<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExitoEliminarMembresia.aspx.cs" Inherits="SmafCR.Pages.ExitoEliminarMembresia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Proceso completado con éxito</h2>

    <div class="alert-success">
        <p>Se ha eliminado correctamente la membresia del cliente</p>
    </div>

    <div>
        <a href="ListaMembresias.aspx">REGRESAR</a>
    </div>
</asp:Content>
