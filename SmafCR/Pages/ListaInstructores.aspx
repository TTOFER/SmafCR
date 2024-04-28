<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaInstructores.aspx.cs" Inherits="SmafCR.Pages.ListaInstructores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="primary-container">
        <asp:GridView ID="GvListaInstructores" runat="server" AutoGenerateColumns="false" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="InstructorID" HeaderText="ID Instructor" />
                <asp:BoundField DataField="UsuarioID" HeaderText="ID Usuario" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Telefono" HeaderText="Teléfono" />
            </Columns>
        </asp:GridView>
    </div>

    <a href ="/" class="btn btn-primary">Menú Principal</a>

</asp:Content>
