<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="tcc.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    Nome:
    <br />
    <asp:TextBox runat="server" ID="nometxt"></asp:TextBox>
    <br />
    <br />
    Area de Atuação:
    <asp:TextBox runat="server" ID="areadeatuacaotxt"></asp:TextBox>
    <br />
    <br />
    Empresa Atual:
    <br />
    <asp:TextBox runat="server" ID="empresaatual"></asp:TextBox>
    <br />
    <br />
    Nivel de Escolaridade:
    <br />
    <asp:TextBox runat="server" ID="escolaridadetxt"></asp:TextBox>
    <br />
    <br />
    Cidade:
    <br />
    <asp:TextBox runat="server" ID="cidadetxt"></asp:TextBox>
    <br />
    <br />
    Estado:
    <br />
    <asp:TextBox runat="server" ID="estadotxt"></asp:TextBox>

    
</asp:Content>
