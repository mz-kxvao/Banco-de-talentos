﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cadastrar.aspx.cs" Inherits="tcc.cadastrar2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    Email:
    <br />
    <asp:TextBox runat="server" ID ="emailtxt"></asp:TextBox>
    <br />
    <br />
    Senha:
    <br />
    <asp:TextBox runat="server" ID="senhatxt" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    Confirmar Senha:
    <br />
    <asp:TextBox runat="server" ID="confsenha" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button runat="server" ID="confisenha" OnClick="confisenha_Click" Text="Confirmar" />
</asp:Content>
