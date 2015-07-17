<%@ Page Title="nramirez36 - Inicio" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CMS.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpTituloPagina" runat="server">
    <h1><a href="index.aspx" id="logo">Bienvenido a <em>nramirez36 </em></a></h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpNav" runat="server">
    <ul>
        <li class="current"><a href="index.aspx">Inicio</a></li>
        <li>
            <a href="#">Nosotros</a>
            <ul>
                <li><a href="QuienesSomos.aspx">Quienes Somos</a></li>
                <li><a href="Historia.aspx">Nuesta Historia</a></li>
                <li><a href="Vision.aspx">Visión, Misión y Valores</a></li>
                <%--<li><a href="Ubicacion.aspx">Ubicación</a></li>--%>
            </ul>
        </li>
        <%-- <li><a href="Novedades.aspx">Novedades</a></li>--%>
        <li><a href="Contacto.aspx">Contacto</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cpSlider" runat="server">
    <section id="banner">
        <header>
            <h2>nramirez36 - <em>Sistemas Informaticos</em></h2>
            <a href="QuienesSomos.aspx" class="button">Conózcanos</a>

        </header>
    </section>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cpHighlights" runat="server">
    <section class="wrapper style1">
        <div class="container">
            <div class="row double">
                <section class="4u">
                    <div class="box highlight">
                        <i class="icon major fa-paper-plane"></i>
                        <h3>Quienes Somos</h3>
                        <p><b>nramirez36</b> es una organización especializada en brindar servicios informáticos. Estamos especializados en el desarrollo de soluciones adecuadas para las necesidades de cada cliente.</p>
                    </div>
                </section>
                <section class="4u">
                    <div class="box highlight">
                        <i class="icon major fa-pencil"></i>
                        <h3>Especialidades</h3>
                        <p>Somos especialista en el desarrollo de productos utilizando las tecnologías de Microsoft.</p>
                    </div>
                </section>
                <section class="4u">
                    <div class="box highlight">
                        <i class="icon major fa-wrench"></i>
                        <h3>Servicios</h3>
                        <p>Le brindamos a nuestros clientes el mejor servicio para que pueda tener la mejor experiencia tanto con el producto como con su uso y el soporte del mismo.</p>
                    </div>
                </section>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ContentPlaceHolderID="cpNovedades" ID="Content8" runat="server">
    <section class="wrapper style1">
        <div class="container">
            <div class="row">
                <section class="6u">
                    <div class="box post">
                        <a href="#" class="image left">
                            <img src="images/pic01.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>Capacitaciones</h3>
                            <p>Brindamos cursos de capacitación y actualización tecnológica para que puedas ser mas eficiente y eficaz.</p>
                        </div>
                    </div>
                </section>
                <section class="6u">
                    <div class="box post">
                        <a href="#" class="image left">
                            <img src="images/pic02.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>Desarrollo a Medida</h3>
                            <p>Realizamos desarrollo de sistemas y sitios web que se ajustan a tus necesidades.</p>
                        </div>
                    </div>
                </section>
            </div>
            <div class="row">
                <section class="6u">
                    <div class="box post">
                        <a href="#" class="image left">
                            <img src="images/pic03.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>Desarrollo Mobile</h3>
                            <p>Realizamos tus aplicaciones para que tambien puedas contar con tu negocio en los telefonos o puedas brindar mas servicios a tus clientes.</p>
                        </div>
                    </div>
                </section>
                <section class="6u">
                    <div class="box post">
                        <a href="#" class="image left">
                            <img src="images/pic04.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>Charlas</h3>
                            <p>Se dictan charlas en distintas instituciones para promover el uso adecuado de las tecnológias.</p>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpContenido" runat="server">
</asp:Content>
