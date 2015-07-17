<%@ Page Title="nramirez36 - Administrador de Novedades" Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="NovedadesABM.aspx.cs" Inherits="CMS.NovedadesABM" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
    <script runat="server">
        
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (fileNovedad.HasFile)
                SaveFile(fileNovedad.PostedFile);
            else
                UploadStatusLabel.Text = "No hay archivo seleccionado";
        }

        void SaveFile(HttpPostedFile file)
        {
            string savePath = ConfigurationSettings.AppSettings["PathArchivos"];
            string fileName = fileNovedad.FileName;
            PathToCheck = savePath + fileName;
            PathNombreArchivo = fileName;
            string tempfileName = "";
            if (System.IO.File.Exists(PathToCheck))
            {
                int counter = 2;
                while (System.IO.File.Exists(PathToCheck))
                {
                    tempfileName = counter.ToString() + fileName;
                    PathToCheck = savePath + tempfileName;
                    counter++;
                }
                fileName = tempfileName;
                PathNombreArchivo = fileName;
                UploadStatusLabel.Text = "Un archivo con el mismo nombre ya existia." +
                  "<br />Tu archivo ha sido grabado como " + fileName;
            }
            else
            {
                UploadStatusLabel.Text = "Archivo agregado correctamente";
            }
            savePath += fileName;
            fileNovedad.SaveAs(savePath);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpTituloPagina" runat="server">
    <h1><a href="index.aspx" id="logo">Gestor de Contenido - <em>TODO SALUD </em></a></h1>
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
        <li><a href="Contacto.aspx">Contacto</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpContenido" runat="server">
    <header>
        <h2>Administrador de Novedades</h2>
    </header>
    <div class="graypanel">
        <h2>Actualizar Novedades</h2>
        <asp:Label ID="Label1" runat="server" Text="Ingrese la descripción:"></asp:Label>
        <asp:TextBox ID="txtDescripcionFiltro" runat="server" />
        <asp:Button ID="btnBuscarNovedad" runat="server" Text="Buscar" OnClick="btnBuscarNovedad_Click" />
        <br />
        <asp:Label ID="lblMensajeAdvertencia" runat="server" Font-Size="Small" ForeColor="Maroon"
            Style="text-align: center"></asp:Label>
        <br />
        <asp:GridView ID="gvListadoNovedades" runat="server" ShowFooter="True" CellPadding="4" ShowHeaderWhenEmpty="True" AllowPaging="True" EmptyDataText="No se encontraron datos" AutoGenerateSelectButton="True" Width="100%" Font-Size="Small" Style="text-align: center" HorizontalAlign="Center" OnPageIndexChanging="gvListadoNovedades_PageIndexChanging" OnSelectedIndexChanged="gvListadoNovedades_SelectedIndexChanged" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField HeaderText="Numero de Novedad" DataField="nov_identificador" />
                <asp:BoundField HeaderText="Titulo" DataField="titulo" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Justify" VerticalAlign="Top" Wrap="False" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </div>

    <div class="graypanel" align="justify">
        <span class="smalltitle">Novedad</span>
        <br />
        <asp:LinkButton ID="lnkAgregarNovedad" runat="server" OnClick="lnkAgregarNovedad_Click">Agregar</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lnkModificarNovedad" runat="server" OnClick="lnkModificarNovedad_Click">Modificar</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lnkQuitarNovedad" runat="server" OnClick="lnkQuitarNovedad_Click">Quitar</asp:LinkButton>
        <br />
        <asp:Label ID="lblOperacion" runat="server" Font-Size="Medium" ForeColor="Maroon"></asp:Label>
        <table style="width: 100%;">
            <tr>
                <td class="styleTD">
                    <asp:Label ID="Label2" runat="server" Text="Titulo:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="styleTD">
                    <asp:Label ID="Label3" runat="server" Text="Descripción Breve:" Enabled="false"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtDescripcionBreve" CssClass="MultiLineTextBox" runat="server" Enabled="false" Font-Size="X-Small" MaxLength="500" Font-Names="Tahoma" TextMode="MultiLine" Width="100%" Height="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="styleTD">
                    <asp:Label ID="Label4" runat="server" Text="Es Html?"></asp:Label></td>
                <td class="CheckNovedades">
                    <asp:CheckBox ID="rbHtml" runat="server" Checked="false" />
                </td>
            </tr>
            <tr>
                <td class="styleTD">
                    <asp:Label ID="Label5" runat="server" Text="Es Historica?"></asp:Label></td>
                <td class="CheckNovedades">
                    <asp:CheckBox ID="rbHistorica" runat="server" Checked="false" />
                </td>
            </tr>
            <tr>
                <td class="styleTD">
                    <asp:Label ID="Label8" runat="server" Text="Es Imagen?"></asp:Label></td>
                <td class="CheckNovedades">
                    <asp:CheckBox ID="rbImagen" runat="server" Checked="false" />
                </td>
            </tr>
            <tr>
                <td class="styleTD">
                    <asp:Label ID="Label6" runat="server" Text="Mensaje:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtMensaje" CssClass="MultiLineTextBox" runat="server" Height="260px" TextMode="MultiLine" Enabled="False" Font-Names="Tahoma" Font-Size="X-Small" Width="100%" MaxLength="500"></asp:TextBox>
                </td>
            </tr>
            <tr>
               <td class="styleTD">
                    <asp:Label ID="Label7" runat="server" Text="Archivo"></asp:Label></td>
                <td>
                    <asp:FileUpload ID="fileNovedad" runat="server" Width="100%" Font-Names="Tahoma" Enabled="False" Font-Size="X-Small" />
                    <asp:Button ID="btnSubirArchivo" runat="server" Text="Subir archivo" Enabled="false" OnClick="btnSubirArchivo_Click" />
                    <hr />
                    <asp:Label ID="UploadStatusLabel" runat="server" />
                </td>
            </tr>
        </table>
        <br />
        <asp:LinkButton ID="lnkAceptarCambio" runat="server" Enabled="false" OnClick="lnkAceptarCambio_Click">Aceptar</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lnkCancelarCambio" runat="server" Enabled="false" OnClick="lnkCancelarCambio_Click">Cancelar</asp:LinkButton>
    </div>
</asp:Content>
