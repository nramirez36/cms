<%@ Page Title="nramirez36 - Visión" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="Vision.aspx.cs" Inherits="CMS.Vision" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpTituloPagina" runat="server">
    <h1><a href="index.aspx" id="logo">nramirez36 - <em>Nuestra Visión</em></a></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpNav" runat="server">
    <ul>
        <li ><a href="index.aspx">Inicio</a></li>
        <li class="current">
            <a href="#">Nosotros</a>
            <ul>
                <li><a href="QuienesSomos.aspx">Quienes Somos</a></li>
                <li><a href="Historia.aspx">Nuesta Historia</a></li>
                <li class="current"><a href="Vision.aspx">Visión, Misión y Valores</a></li>
                <%--<%--<li><a href="Ubicacion.aspx">Ubicación</a></li>--%>--%>
            </ul>
        </li>
        <%--<li><a href="Novedades.aspx">Novedades</a></li>--%>
        <li><a href="Contacto.aspx">Contacto</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpSlider" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cpHighlights" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cpContenido" runat="server">
    <div id="content">

        <!-- Content -->

        <article>
            <header>
                <h2>Nuestra Visión</h2>
                <%--<p>All content, all the time.</p>--%>
            </header>

            <%--<span class="image featured">
                <img src="images/banner.jpg" alt="" /></span>--%>

            <p>
                La misión de nuestra organización es ser reconocida en el mercado por la calidad de nuestros productos y la aprobación de los clientes.
            </p>

            <h2>Nuestro principal Objetivo</h2>
            <p>
                Nuestro objetivo principal es el desarrollo y comercialización de sistemas informáticos a nuestros clientes, brindando un servicio de excelencia.
            </p>

        </article>

    </div>
</asp:Content>
