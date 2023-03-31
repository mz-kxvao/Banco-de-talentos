<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cadastrar.aspx.cs" Inherits="tcc.cadastrar2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="cadastrar.css" rel="stylesheet" />
    <h2>Cadastrar</h2>
    <asp:TextBox runat="server" ID ="emailtxt" class="texto" placeholder="Email"></asp:TextBox>

    <body>
        <p style="color:red;">
            <asp:Label runat="server" ID="lblStatus" Text=" " style=" margin-left:46%; position:absolute; margin-top:-1.7%"></asp:Label>
        </p>
    </body>
   
    <asp:TextBox runat="server" class="texto" ID="senhatxt" placeholder="Senha" style="margin-top:1%;"  TextMode="Password"></asp:TextBox>

    <body>
        <p style="color:red;">
            <asp:Label runat="server" ID="lblsenha" Text=" " style=" margin-left:46%; position:absolute; margin-top:-1.7%"></asp:Label>
        </p>
    </body>

    <asp:TextBox runat="server" class="texto" ID="confsenha" placeholder="Confirmar Senha" style="margin-top:1%" TextMode="Password"></asp:TextBox>

    <asp:Button runat="server" ID="confisenha" OnClick="confisenha_Click" class="botao" style=" margin-left:38%; margin-top:1%;" Text="Confirmar" />
</asp:Content>
