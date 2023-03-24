<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="tcc.Login" %>
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
    <asp:Button runat="server" ID="confirmabtn" OnClick="confirmabtn_Click" Text="Confirmar"/>
    <br />
    <body>
        <p style="color:red;">
            <asp:Label runat="server" ID="lblStatus" Text=" "></asp:Label>
        </p>
    </body>
   
</asp:Content>
