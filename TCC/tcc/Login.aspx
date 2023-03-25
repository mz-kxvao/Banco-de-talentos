<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="tcc.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <link href="login.css" rel="stylesheet" />
    <!DOCTYPE html>
    <html>
        <h2>LOGIN</h2>
    <asp:TextBox runat="server" ID ="emailtxt" class="emailtxt" ForeColor="Black" placeholder="Email"></asp:TextBox>

    <asp:TextBox runat="server" ID="senhatxt" placeholder="Senha" ForeColor="Black" type="password" class="senhatxt"> </asp:TextBox>
    
    <asp:Button runat="server" ID="confirmabtn" OnClick="confirmabtn_Click" class="confirmabtn" Text="Confirmar"/>
   
    <body>
        <p style="color:red;">
            <asp:Label runat="server" ID="lblStatus" Text=" "></asp:Label>
        </p>
    </body>
        </html>
   
</asp:Content>
