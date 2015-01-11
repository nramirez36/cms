<%@ Page Title="nramirez36 - Contacto" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="CMS.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

    <script type="text/javascript">
        function load(longx, longy, direccion, tipoMapa) {
            var myLatlng = new google.maps.LatLng(longx, longy);

            var mapOptions = {
                center: new google.maps.LatLng(longx, longy),
                zoom: 16,

                mapTypeId: tipoMapa //google.maps.MapTypeId.HYBRID 
            };
            var map = new google.maps.Map(document.getElementById("map_canvas"),
                mapOptions);

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: direccion
            });
            marker.info = new google.maps.InfoWindow({
                content: direccion
            });


            google.maps.event.addListener(marker, "mouseover", function () { marker.info.open(map, marker); });
            marker.info.open(map, marker);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpTituloPagina" runat="server">
    <h1><a href="index.aspx" id="logo">nramirez36 - <em>Contactos</em></a></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpNav" runat="server">
    <ul>
        <li><a href="index.aspx">Inicio</a></li>
        <li>
            <a href="Nosotros.aspx">Nosotros</a>
            <ul>
                <li><a href="QuienesSomos.aspx">Quienes Somos</a></li>
                <li><a href="Historia.aspx">Nuesta Historia</a></li>
                <li><a href="Vision.aspx">Visión, Misión y Valores</a></li>
                <li><a href="Ubicacion.aspx">Ubicación</a></li>
            </ul>
        </li>
        <li><a href="Novedades.aspx">Novedades</a></li>
        <li class="current"><a href="Contacto.aspx">Contacto</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpSlider" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cpHighlights" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cpContenido" runat="server">
</asp:Content>
