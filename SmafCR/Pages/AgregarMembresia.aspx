<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarMembresia.aspx.cs" Inherits="SmafCR.Pages.AgregarMembresia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>AGREGAR NUEVA MEMBRESIA PARA CLIENTE</h2>

    <div>
        <h3>Ingrese los siguientes datos:</h3>

        <div style="margin-bottom: 10px;">
            <span>Cliente</span>
            <asp:DropDownList ID="DdlClientes" runat="server" Enabled="true"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RFVClientes" runat="server"
                ControlToValidate="DdlClientes" ErrorMessage="Selecciona un cliente"
                CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div>
            <span>Fecha de Inicio de la membresía</span>
            <asp:TextBox ID="TxtFechaInicio" runat="server" CssClass="form-control" placeholder="Mes/Día/Año"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVFechaInicio" runat="server"
                ControlToValidate="TxtFechaInicio" ErrorMessage="La fecha de inicio es requerida."
                CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div>
            <span>Fecha final de la membresía</span>
            <asp:TextBox ID="TxtFechaFin" runat="server" CssClass="form-control" placeholder="Mes/Día/Año"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVFechaFin" runat="server"
                ControlToValidate="TxtFechaFin" ErrorMessage="La fecha de finalización es requerida."
                CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div>
            <span>Monto</span>
            <asp:TextBox ID="TxtMonto" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVMonto" runat="server"
                ControlToValidate="TxtMonto" ErrorMessage="Ingrese el monto de la membresía"
                CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>


        <div style="margin-bottom: 10px;">
            <asp:Button ID="BtnAgregarMembresia" runat="server"
                Text="AGREGAR MEMBRESIA" BackColor="#006600"
                ForeColor="White" CssClass=" btn btn-primary"
                OnClick="BtnAgregarMembresia_Click" />
        </div>

        <div style="margin-bottom: 10px;">
            <a href="ListaMembresias.aspx" class="btn btn-danger">Regresar a Lista</a>
        </div>
    </div>
</asp:Content>
