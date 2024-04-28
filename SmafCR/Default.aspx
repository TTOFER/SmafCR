<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SmafCR._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <%--<section class="row" aria-labelledby="aspnetTitle">
            <div>
                <h1 id="aspnetTitle">Proyecto Final - Progra 5</h1>
                <p class="lead">Academia de Artes Marciales - Smaf Costa Rica</p>
                <p><a href="Pages/ListaUsuarios.aspx" class="btn btn-primary btn-md">Lista de usuarios &raquo;</a></p>

                <p><a href="Pages/ListaClientes.aspx" class="btn btn-primary btn-md">Clientes &raquo;</a></p>

                <p><a href="Pages/ListaInstructores.aspx" class="btn btn-primary btn-md">Instructores &raquo;</a></p>
            </div>

        </section>--%>


        <section class="jumbotron text-center">
            <div class="container">
                <h1>Proyecto final - Progra 5</h1>
                <h2 class="display-4">Smaf Costa Rica</h2>
                <p class="lead">Academia de artes marciales mixtas de San Ramón</p>
            </div>
        </section>

        <section class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img src="https://cdn-icons-png.flaticon.com/512/289/289548.png" class="card-img-top img-fluid" style="width: 400px; height: 300px;" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Usuarios</h5>
                            <p class="card-text">Administra los usuarios de la academia.</p>
                            <a href="Pages/ListaUsuarios.aspx" class="btn btn-primary">Ver lista</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img src="https://media1.thehungryjpeg.com/thumbs/800_3498247_3fc640150cff94c8ca80db277cea1780a062cba7.jpg" class="card-img-top" style="width: 400px; height: 300px;" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Clientes</h5>
                            <p class="card-text">Gestiona la información de los clientes.</p>
                            <a href="Pages/ListaClientes.aspx" class="btn btn-primary">Ver lista</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img src="https://clipartlib.com//wp-content/uploads/2020/07/boxer-icon.jpg" class="card-img-top" style="width: 400px; height: 300px;" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Instructores</h5>
                            <p class="card-text">Explora el listado de instructores.</p>
                            <a href="Pages/ListaInstructores.aspx" class="btn btn-primary">Ver lista</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img src="https://thumbs.dreamstime.com/b/boxing-club-logo-two-men-ring-ribbon-shows-58682196.jpg" class="card-img-top" style="width: 400px; height: 300px;" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Membresia</h5>
                            <p class="card-text">Administra las membresías de los clientes</p>
                            <a href="Pages/ListaMembresias.aspx" class="btn btn-primary">Ver lista</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img src="https://cdn-icons-png.flaticon.com/512/6429/6429149.png" class="card-img-top" style="width: 400px; height: 300px;" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Asistencia</h5>
                            <p class="card-text">Administra las asistecias de cada mes</p>
                            <a href="Pages/Mensaje.aspx" class="btn btn-primary">Ver lista</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img src="https://img.freepik.com/premium-vector/boxer-boxing-hand-drawn-silhouette-sport-punch-training-icon-logo-vintage-sketch-illustration_66976-732.jpg" class="card-img-top" style="width: 400px; height: 300px;" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Rutinas</h5>
                            <p class="card-text">Administra las rutinas</p>
                            <a href="Pages/Mensaje.aspx" class="btn btn-primary">Ver lista</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <%--<div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Hola</h2>
                <p>
                    Hola
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Hello</h2>
                <p>
                    Hello
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Bonjour</h2>
                <p>
                    Bonjour
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div>--%>
    </main>

</asp:Content>
