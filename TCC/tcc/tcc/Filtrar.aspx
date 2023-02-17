<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Filtrar.aspx.cs" Inherits="tcc.Tela_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <b>
        <p style="color:red; text-align:center; font:1600;"> TELA DO ADMINISTRADOR </p>
    </b>
    Estado:
    <asp:TextBox runat="server" ID="estadotxt"></asp:TextBox>
    <br />
    <br />
    Cidade:
    <asp:TextBox runat="server" ID="cidadetxt"></asp:TextBox>
    <br />
    <br />
    Empresa atual:
    <asp:TextBox runat="server" ID="empresaatual"></asp:TextBox>
    <br />
    <br />
    <p style= "text-align:justify; font-style:oblique"> Nivel de Escolaridade:
        <br />
     <asp:DropDownList runat="server" ID="escolaridadedrop" >
        <asp:ListItem Text=""></asp:ListItem>
        <asp:ListItem Text="Ensino Fundamental"></asp:ListItem>
        <asp:ListItem Text="Ensino Fundamental Completo"></asp:ListItem>
        <asp:ListItem Text="Ensino Medio"></asp:ListItem>
        <asp:ListItem Text="Ensino Medio Completo"></asp:ListItem>
        <asp:ListItem Text="Ensino Tecnico"></asp:ListItem>
        <asp:ListItem Text="Ensino Superior"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <p style= "text-align:justify; font-style:oblique"> Area de atuação: 
     <br />
         <asp:DropDownList runat="server" ID="areadeatuacaodrop">
        <asp:ListItem Text=""></asp:ListItem>
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
