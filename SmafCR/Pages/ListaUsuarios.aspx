<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaUsuarios.aspx.cs" Inherits="SmafCR.Pages.SmafCRPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-bottom: 10px;">
        <a href="AgregarUsuario.aspx" class="btn btn-primary">Agregar Usuario</a>
    </div>

    <div class="primary-container">

        <asp:GridView ID="GvListaUsuarios" runat="server" AutoGenerateColumns="false" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="UsuarioID" HeaderText="Código Usuario" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre Usuario" />
                <asp:BoundField DataField="Email" HeaderText="Email Usuario" />
                <asp:BoundField DataField="Telefono" HeaderText="Teléfono Usuario" />
                <asp:BoundField DataField="DescripcionRol" HeaderText="Rol de Usuario" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="ModificarUsuario.aspx?id=<%# Eval("UsuarioID")  %>" class="btn btn-success">Modificar</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>

</asp:Content>
