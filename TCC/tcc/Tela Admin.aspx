<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tela Admin.aspx.cs" Inherits="tcc.Tela_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <b>
        <p style="color:red; text-align:center; font:1600;"> TELA DO ADMINISTRADOR </p>
    </b>
    <br />
    <br />
    <p style= "text-align:justify; font-style:oblique"> Area de atuação: 
     <br />
         <asp:DropDownList runat="server" ID="areadeatuacaodrop">
        <asp:ListItem Text="Selecione"></asp:ListItem>
        <asp:ListItem Text="Engenharia Biomédica"></asp:ListItem>
        <asp:ListItem Text="Engenharia Civil"></asp:ListItem>
        <asp:ListItem Text="Ciências Contábeis"></asp:ListItem>
        <asp:ListItem Text="Direito"></asp:ListItem>
        <asp:ListItem Text="Design Gráfico"></asp:ListItem>
    </asp:DropDownList>
        <br />
        <br />
    
        <asp:Button runat="server" ID="btnFiltro" Text="Filtrar" OnClick="btnFiltro_Click" />
        
    </p>

</asp:Content>
