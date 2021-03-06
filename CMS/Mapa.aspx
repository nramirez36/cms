﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mapa.aspx.cs" Inherits="CMS.Mapa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>TODO SALUD - Donde Estamos</title>
    <%--    <script src="js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>--%>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
        function InitializeMap() {
            var latlng = new google.maps.LatLng(-31.4825991, -64.2486434);
            var myOptions = {
                zoom: 15,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("map"), myOptions);
            var marker = new google.maps.Marker({
                position: latlng,
                map: map,
                title: 'nramirez36'
            });
            marker.info = new google.maps.InfoWindow({
                content: 'Dirección: <br/>Belice 6060 <br/>B° Parque Futura'
            });
            google.maps.event.addListener(marker, "mouseover", function () { marker.info.open(map, marker); });
            marker.info.open(map, marker);
        }
        window.onload = InitializeMap;
    </script>
</head>
<body>
    <div id="map" style="width: 500px; height: 350px;" />
</body>
</html>
