<%@ Page Title="" Language="C#" MasterPageFile="~/sitio.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="nramirez36.CMS.Inicio" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="cpNav" runat="server">
    <ul>
        <li class="current_page_item"><a href="index.aspx">Inicio</a></li>
        <li><a href="threecolumn1.aspx">Quienes Somos</a></li>
        <li><a href="threecolumn2.aspx">Pacientes</a></li>
        <li><a href="twocolumn1.aspx">Prestaciones</a></li>
        <li><a href="twocolumn2.aspx">Obras Sociales</a></li>
        <li><a href="onecolumn.aspx">Novedades</a></li>
        <li><a href="onecolumn.aspx">Contacto</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpContenido" runat="server">
    <div id="main-wrapper">
        <div class="container">
            <div class="row">
                <div class="12u">
                    <!-- Slider -->
                    <div id="banner">
                        <a href="#">
                            <img src="images/banner.jpg" alt="" /></a>
                        <div class="caption">
                            <span><strong>Slider</strong>: Aca se podria poner un slider con novedades o promociones</span>
                            <a href="#" class="button">Ver</a>
                        </div>
                    </div>
                    <!-- Contenido -->
                    <div class="row">
                        <div class="3u">
                            <section class="first">
                                <h2>Welcome to Arcana</h2>
                                <p>
                                    This is <strong>Arcana</strong>, a fully responsive HTML5 site template designed by <a href="http://n33.co">n33</a> and released for free by <a href="http://html5up.net">HTML5 UP</a> It features
									a simple yet elegant design, solid HTML5 and CSS3 code, and full responsive support for desktop, tablet, and mobile displays.
                                </p>
                            </section>
                        </div>
                        <div class="3u">
                            <section>
                                <h2>Responsive? Really?</h2>
                                <p>
                                    Yup. This site template is fully responsive, meaning it'll look great on desktop (widescreen and standard), tablet and mobile device
									displays. Try it for yourself: simply resize your browser window to see how stuff shifts around and changes.
                                </p>
                            </section>
                        </div>
                        <div class="3u">
                            <section>
                                <h2>The CCA 3.0 License</h2>
                                <p>
                                    <strong>Arcana</strong> is released for free under the <a href="http://html5up.net/license">Creative Commons Attribution 3.0 license</a>, which means you can use it for
									pretty much any personal or commercial use. The catch? Just give us credit wherever you use it (oh, and tell your friends about us, though
									that's not in the license :)
                                </p>
                            </section>
                        </div>
                        <div class="3u">
                            <section class="last">
                                <h2>About HTML5 UP</h2>
                                <p>
                                    HTML5 UP is a small side project by AJ (aka n33) to practice working with HTML5 and responsive design techniques. You can find
									more cool designs at <a href="http://html5up.net">html5up.net</a> or follow us on Twitter (<a href="http://twitter.com/n33co">@n33co</a>
                                ) for new release announcements and other cool stuff.
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
