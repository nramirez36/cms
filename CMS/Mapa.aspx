﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mapa.aspx.cs" Inherits="CMS.Mapa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>TOTAL SALUD - Donde Estamos</title>
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
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="map" style="width: 100%; height: 500px" />
        </div>
    </form>
</body>
</html>
