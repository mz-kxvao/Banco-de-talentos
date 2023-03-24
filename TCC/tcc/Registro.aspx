<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="tcc.Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <link href="style.css" rel="stylesheet" />
    
    <h2>Completar Cadastro</h2>
    <asp:TextBox style="margin-left: 38%;" ForeColor="Black" class="textos" runat="server" ID="nometxt" placeholder="Nome Completo"> </asp:TextBox>

    <asp:TextBox style="margin-left: 38%;" class="textos" runat="server" ID="emailtxt" placeholder="Email"></asp:TextBox>

    <asp:TextBox style="margin-left: 38%;" class="textos" runat="server" ID="telefonetxt" placeholder="Telefone"></asp:TextBox>

    <asp:TextBox style="margin-left: 38%;" class="textos" runat="server" ID="estadotxt" placeholder="Estado"></asp:TextBox>

    <asp:TextBox style="margin-left: 38%;" class="textos" runat="server" ID="cidadetxt" placeholder="Cidade"> </asp:TextBox>

    <asp:TextBox style="margin-left: 38%;" class="textos" runat="server" ID="empresaatual" placeholder="Empresa Atual"></asp:TextBox>

    <asp:DropDownList runat="server" ForeColor="Gray" style="margin-left: 38%;" class="textos" ID="areadeatuacaodrop">
        <asp:ListItem Value="" Text="Area de Atuação"></asp:ListItem>
        <asp:ListItem Value="Engenharia Biomédica" Text="Engenharia Biomédica"></asp:ListItem>
        <asp:ListItem Value="Engenharia Civil" Text="Engenharia Civil"></asp:ListItem>
        <asp:ListItem Value="Ciências Contábeis" Text="Ciências Contábeis"></asp:ListItem>
        <asp:ListItem Value="Direito" Text="Direito"></asp:ListItem>
        <asp:ListItem Value="Design Gráfico" Text="Design Gráfico"></asp:ListItem>
    </asp:DropDownList>
    
    <asp:DropDownList runat="server" class="textos" style="margin-left: 38%;" ForeColor="Gray" placeholder="Nome Completo" ID="escolaridadedrop">
        <asp:ListItem Value="" Text="Nivel de Escolaridade"></asp:ListItem>
        <asp:ListItem Value="Ensino Fundamental" Text="Ensino Fundamental"></asp:ListItem>
        <asp:ListItem Value="Ensino Fundamental Completo" Text="Ensino Fundamental Completo"></asp:ListItem>
        <asp:ListItem Value="Ensino Medio" Text="Ensino Medio"></asp:ListItem>
        <asp:ListItem Value="Ensino Medio Completo" Text="Ensino Medio Completo"></asp:ListItem>
        <asp:ListItem Value="Ensino Tecnico" Text="Ensino Tecnico"></asp:ListItem>
        <asp:ListItem Value="Ensino Superior" Text="Ensino Superior"></asp:ListItem>
    </asp:DropDownList>
    
    <asp:FileUpload ID="FileUpload2"  class="btn btn-outline-info" style="margin-left: 38%;width:700px; "  AllowMultiple="false" accept="image/*" runat="server" />

    <body>
        <p style="color:red;">
            <asp:Label runat="server" ID="lblStatus" Text=" "></asp:Label>
        </p>
    </body>
    <br />
    <asp:Button runat="server" ID="confirmabtn" class="btn btn-info" OnClick="confirmabtn_Click" Text="Confirmar" style="margin-left:43%;width:150px;height:40px;font-size:17px"/>

</asp:Content>
