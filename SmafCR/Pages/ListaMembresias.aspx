<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaMembresias.aspx.cs" Inherits="SmafCR.Pages.ListaMembresias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-bottom: 10px;">
        <a href="AgregarMembresia.aspx" class="btn btn-primary">Nueva Membresia</a>
    </div>

    <div class="primary-container">

        <asp:GridView ID="GvListaMembresias" runat="server" AutoGenerateColumns="false" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="MembresiaID" HeaderText="Membresia" />
                <asp:BoundField DataField="NombreCliente" HeaderText="Cliente" />
                <asp:BoundField DataField="Fecha_Inicio" HeaderText="Fecha de Inicio" DataFormatString="{0:d}" />
                <asp:BoundField DataField="Fecha_Fin" HeaderText="Fecha de finalización" DataFormatString="{0:d}" />
                <asp:BoundField DataField="Monto" HeaderText="Monto Mensualidad" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="ModificarMembresia.aspx?id=<%# Eval("MembresiaID")  %>" class="btn btn-success">Modificar</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
