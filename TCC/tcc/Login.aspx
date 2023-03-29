<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="tcc.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <link href="login.css" rel="stylesheet" />
    <!DOCTYPE html>
    <html>
        <h2>LOGIN</h2>
    <asp:TextBox runat="server" ID ="emailtxt" class="emailtxt" ForeColor="Black" style=" margin-left:38%;" placeholder="Email"></asp:TextBox>

    <asp:TextBox runat="server" ID="senhatxt" placeholder="Senha" ForeColor="Black" style=" margin-left:38%;" type="password" class="senhatxt"> </asp:TextBox>
        <body>
        <p style="color:red;">
            <asp:Label runat="server" ID="lblStatus" Text=" " style=" margin-left:38%;  margin-top:-1.5%"></asp:Label>
        </p>
    </body>
    
    <asp:Button runat="server" ID="confirmabtn" OnClick="confirmabtn_Click" class="confirmabtn" style=" margin-left:38%; margin-top:-0.5%; " Text="Confirmar"/>
   
    
        </html>
   
</asp:Content>
