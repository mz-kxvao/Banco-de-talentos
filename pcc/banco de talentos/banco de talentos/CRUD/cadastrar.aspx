<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cadastrar.aspx.cs" Inherits="banco_de_talentos.CRUD.cadastrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p> Nome: <asp:TextBox runat="server" ID="txtNome"></asp:TextBox></p>
    <p>Email: <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox></p>
    <p>Idade: <asp:TextBox runat="server" ID="txtIdade"></asp:TextBox></p>
    <p>Telefone: <asp:TextBox runat="server" ID="txtTelefone"></asp:TextBox></p>
    <p>Area de atuação: <asp:TextBox runat="server" ID="txtArea"></asp:TextBox> </p>
    <p>Nivel de escolaridade: <asp:TextBox runat="server" ID="txtNivel"></asp:TextBox></p>
    <p> </p>
    <asp:Button runat="server" ID="btnCadastrar" OnClick="btnCadastrar_Click" Text="Cadastrar" />
</asp:Content>
