<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SmafCR.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Página de contacto.</h3>
        <address>
            One Microsoft Way<br />
            Redmond, WA 98052-6399<br />
            <abbr title="Phone">Teléfono:</abbr>
            +506 83040521
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">mcristofer19@gmail.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">mcristofer19@gmail.com</a>
        </address>
    </main>
</asp:Content>
