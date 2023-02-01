<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="tcc.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    Email:
    <asp:TextBox runat="server" ID ="emailtxt"></asp:TextBox>
    <br />
    <br />
    Senha:
    <asp:TextBox runat="server" ID="senhatxt"></asp:TextBox>
    <br />
    <br />
    <asp:Button runat="server" ID="confirmabtn" OnClick="confirmabtn_Click" Text="Confirmar"/>
</asp:Content>
