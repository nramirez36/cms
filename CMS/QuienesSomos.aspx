<%@ Page Title="nramirez36 - Quienes Somos" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="QuienesSomos.aspx.cs" Inherits="CMS.QuienesSomos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpTituloPagina" runat="server">
    <h1><a href="index.aspx" id="logo">nramirez36 - <em>Quienes Somos </em></a></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpNav" runat="server">
    <ul>
        <li><a href="index.aspx">Inicio</a></li>
        <li class="current">
            <a href="#">Nosotros</a>
            <ul>
                <li class="current"><a href="QuienesSomos.aspx">Quienes Somos</a></li>
                <li><a href="Historia.aspx">Nuesta Historia</a></li>
                <li><a href="Vision.aspx">Visión, Misión y Valores</a></li>
                <%--<li class="current"><a href="Ubicacion.aspx">Ubicación</a></li>--%>
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
                <h2>Nosotros</h2>
                <p>Conocenos un poco más.</p>
            </header>

            <%--<span class="image featured">
                <img src="images/banner.jpg" alt="" /></span>--%>

            <p>
                Somos una empresa que busca brindar soluciones informáticas a las compañías con el fin de que mejor su rendimiento y de que se puedan convertir
                en más competitivas.
            </p>

            <%--<h3>And Yet Another Subheading</h3>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac quam risus, at tempus 
								justo. Sed dictum rutrum massa eu volutpat. Quisque vitae hendrerit sem. Pellentesque lorem felis, 
								ultricies a bibendum id, bibendum sit amet nisl. Mauris et lorem quam. Maecenas rutrum imperdiet 
								vulputate. Nulla quis nibh ipsum, sed egestas justo. Morbi ut ante mattis orci convallis tempor. 
								Etiam a lacus a lacus pharetra porttitor quis accumsan odio. Sed vel euismod nisi. Etiam convallis 
								rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien. 
								Donec sagittis massa et leo semper a scelerisque metus faucibus. Morbi congue mattis mi. 
								Phasellus sed nisl vitae risus tristique volutpat. Cras rutrum commodo luctus.
            </p>

            <p>
                Phasellus odio risus, faucibus et viverra vitae, eleifend ac purus. Praesent mattis, enim 
								quis hendrerit porttitor, sapien tortor viverra magna, sit amet rhoncus nisl lacus nec arcu. 
								Suspendisse laoreet metus ut metus imperdiet interdum aliquam justo tincidunt. Mauris dolor urna, 
								fringilla vel malesuada ac, dignissim eu mi. Praesent mollis massa ac nulla pretium pretium. 
								Maecenas tortor mauris, consectetur pellentesque dapibus eget, tincidunt vitae arcu. 
								Vestibulum purus augue, tincidunt sit amet iaculis id, porta eu purus.
            </p>--%>
        </article>

    </div>
</asp:Content>
