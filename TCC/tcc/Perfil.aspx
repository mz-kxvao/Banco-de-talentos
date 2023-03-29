<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="tcc.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <link href="perfil.css" rel="stylesheet" />

    <h4 style="color: gray; margin-top:2%">Nome:</h4>
    <asp:TextBox runat="server" class="texto" ID="nometxt"></asp:TextBox>

    <h4 style="color: gray; margin-top:-4.7%;position:absolute;margin-left:25%">Email:</h4>
    <asp:TextBox runat="server" class="texto" style="position:absolute; margin-left:25%; height:46px; margin-top:-3.4%"  ID="emailtxt"></asp:TextBox>

    <h4 style="color: gray; margin-top:1%; position:absolute;margin-left:25%">Area de Atuação:</h4>
    <asp:TextBox runat="server" class="texto" style="position:absolute; margin-left:25%; height:46px; margin-top: 2.2%" ID="areadeatuacaotxt"></asp:TextBox>

    <h4 style="color: gray; margin-top:2%">Empresa Atual:</h4>
    <asp:TextBox runat="server" class="texto" ID="empresaatual"></asp:TextBox>

    <h4 style="color: gray;  margin-top: 1.1%;position:absolute;margin-left:25%">Nivel de Escolaridade:</h4>
    <asp:TextBox runat="server" class="texto" style="position:absolute; margin-left:25%; height:46px; margin-top: 2.3%" ID="escolaridadetxt"></asp:TextBox>

    <h4 style="color: gray; margin-top:2%">Cidade:</h4>
    <asp:TextBox runat="server" class="texto" ID="cidadetxt"></asp:TextBox>

    <h4 style="color: gray; margin-top:2%" >Estado:</h4>
    <asp:TextBox runat="server" class="texto" ID="estadotxt"></asp:TextBox>


    <asp:Button runat="server" ID="anexo" class="btn btn-info" style="margin-left:30.5%; height:46px; margin-top: -6.5%; width:300px; font-size:20px;font-family:Roboto" OnClick="anexo_Click" Text="Ver Currículo" />




    
</asp:Content>
