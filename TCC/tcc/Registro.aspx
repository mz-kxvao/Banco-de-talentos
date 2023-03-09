<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="tcc.Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    Nome Completo:
    <asp:TextBox runat="server" ID="nometxt"></asp:TextBox>
    <br />
    <br /> 
    Email:
    <asp:TextBox runat="server" ID="emailtxt"></asp:TextBox>
    <br />
    <br />
    Telefone:
    <asp:TextBox runat="server" ID="telefonetxt"></asp:TextBox>
    <br />
    <br />
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
    Area de Atuação: <asp:DropDownList runat="server" ID="areadeatuacaodrop">
        <asp:ListItem Text=""></asp:ListItem>
        <asp:ListItem Text="Engenharia Biomédica"></asp:ListItem>
        <asp:ListItem Text="Engenharia Civil"></asp:ListItem>
        <asp:ListItem Text="Ciências Contábeis"></asp:ListItem>
        <asp:ListItem Text="Direito"></asp:ListItem>
        <asp:ListItem Text="Design Gráfico"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
   Nivel de Escolaridade: <asp:DropDownList runat="server" ID="escolaridadedrop">
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
    <asp:FileUpload CssClass="capa" ID="FileUpload2" AllowMultiple="false" accept="image/*" runat="server" />
    <br />
    <body>
        <p style="color:red;">
            <asp:Label runat="server" ID="lblStatus" Text=" "></asp:Label>
        </p>
    </body>
    <br />
    <asp:Button runat="server" ID="confirmabtn" OnClick="confirmabtn_Click" Text="Confirmar"/>

</asp:Content>
