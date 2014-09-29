<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="PopupMap.aspx.cs" Inherits="CMS.PopupMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
        <script src="js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
        function InitializeMap() {
            var latlng = new google.maps.LatLng(-31.482760, -64.248751);
            var myOptions = {
                zoom: 10,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("map"), myOptions);
            var marker = new google.maps.Marker({
                position: latlng,
                map: map,
                title: 'Hola'
            });
            marker.info = new google.maps.InfoWindow({
                content: 'Datos'
            });
            google.maps.event.addListener(marker, "mouseover", function () { marker.info.open(map, marker); });
            marker.info.open(map, marker);
        }
        window.onload = InitializeMap;
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpTituloPagina" runat="server" Visible="false">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpNav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpSlider" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cpHighlights" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cpGiganticHeading" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cpNovedades" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="map" style="width: 100%; height:500px"/>
</asp:Content>
