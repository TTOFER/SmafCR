<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaClientes.aspx.cs" Inherits="SmafCR.Pages.ListaClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="primary-container">
        <asp:GridView ID="GvListaClientes" runat="server" AutoGenerateColumns="false" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="ClienteID" HeaderText="ID Cliente" />
                <asp:BoundField DataField="UsuarioID" HeaderText="ID Usuario" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Telefono" HeaderText="Teléfono" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
