<%@ Page Title="TODO SALUD - Acceso al Sistema" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CMS.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpTituloPagina" runat="server">
    <h1><a href="index.aspx" id="logo">Acceso al Sistema - <em>TODO SALUD </em></a></h1>
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
        <li><a href="Pacientes.aspx">Pacientes</a></li>
        <li><a href="Prestaciones.aspx">Prestaciones</a></li>
        <li><a href="ObraSocial.aspx">Obra Social</a></li>
        <li><a href="Novedades.aspx">Novedades</a></li>
        <li><a href="Contacto.aspx">Contacto</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="cpContenido" runat="server">
    <section class="6u">
        <h3>Iniciar sesión</h3>
        <p>
            Especifique su nombre de usuario y contraseña.
        </p>
        <div class="row half collapse-at-2">
            <div class="6u">
                <asp:Label ID="Label3" runat="server" Text="Usuario:"></asp:Label>
                <asp:TextBox ID="txtUsuario" Width="300px" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ErrorMessage="El Usuario es obligatorio" ControlToValidate="txtUsuario" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row half">
            <div class="12u">
                <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="La Contraseña es obligatoria" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row half">
            <div class="12u">
                <ul class="actions">
                    <li>
                        <input type="submit" class="button alt" value="Ingresar" /></li>
                </ul>
            </div>
        </div>
    </section>
</asp:Content>
