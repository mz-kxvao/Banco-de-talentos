<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="tcc.Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <link href="style.css" rel="stylesheet" />
    
    <h2 style="margin-top: 2%;" >Completar Cadastro</h2>
    <asp:TextBox style="margin-left: 39.5%;" ForeColor="Black" class="textos" runat="server" ID="nometxt" placeholder="Nome Completo"> </asp:TextBox>

    <asp:TextBox style="margin-left: 39.5%;" class="textos" runat="server" ID="emailtxt"  ForeColor="Black" placeholder="Email"></asp:TextBox>

    <asp:TextBox style="margin-left: 39.5%;" class="textos" runat="server" ID="telefonetxt" ForeColor="Black" placeholder="Telefone"></asp:TextBox>

   <%-- <asp:TextBox style="margin-left: 39.5%;" class="textos" runat="server" ID="estadotxt" ForeColor="Gray" placeholder="Estado"></asp:TextBox>--%>

    <asp:DropDownList runat="server" ForeColor="Black" style="margin-left: 39.5%;" class="textos" ID="estado_drop">

        <asp:ListItem Value="" Text="Estado "></asp:ListItem>
        <asp:ListItem Value="AC" Text="Acre"></asp:ListItem>
        <asp:ListItem Value="AL" Text="Alagoas"></asp:ListItem>
        <asp:ListItem Value="AP" Text="Amapá"></asp:ListItem>
        <asp:ListItem Value="AM" Text="Amazonas"></asp:ListItem>
        <asp:ListItem Value="BA" Text="Bahia"></asp:ListItem>
        <asp:ListItem Value="CE" Text="Ceará"></asp:ListItem>
        <asp:ListItem Value="DF" Text="Distrito Federal"></asp:ListItem>
        <asp:ListItem Value="ES" Text="Espírito Santo"></asp:ListItem>
        <asp:ListItem Value="GO" Text="Goiás"></asp:ListItem>
        <asp:ListItem Value="MA" Text="Maranhão"></asp:ListItem>
        <asp:ListItem Value="MT" Text="Mato Grosso"></asp:ListItem>
        <asp:ListItem Value="MS" Text="Mato Grosso do Sul"></asp:ListItem>
        <asp:ListItem Value="MG" Text="Minas Gerais"></asp:ListItem>
        <asp:ListItem Value="PA" Text="Pará"></asp:ListItem>
        <asp:ListItem Value="PB" Text="Paraíba"></asp:ListItem>
        <asp:ListItem Value="PR" Text="Paraná"></asp:ListItem>
        <asp:ListItem Value="PE" Text="Pernambuco"></asp:ListItem>
        <asp:ListItem Value="PI" Text="Piauí"></asp:ListItem>
        <asp:ListItem Value="RJ" Text="Rio de Janeiro"></asp:ListItem>
        <asp:ListItem Value="RN" Text="Rio Grande do Norte"></asp:ListItem>
        <asp:ListItem Value="RS" Text="Rio Grande do Sul"></asp:ListItem>
        <asp:ListItem Value="RO" Text="Rondônia"></asp:ListItem>
        <asp:ListItem Value="RR" Text="Roraima"></asp:ListItem>
        <asp:ListItem Value="SC" Text="Santa Catarina"></asp:ListItem>
        <asp:ListItem Value="SP" Text="São Paulo"></asp:ListItem>
        <asp:ListItem Value="SE" Text="Sergipe"></asp:ListItem>
        <asp:ListItem Value="TO" Text="Tocantins"></asp:ListItem>

    </asp:DropDownList>

    <asp:TextBox style="margin-left: 39.5%;" class="textos" runat="server" ID="cidadetxt" ForeColor="Black" placeholder="Cidade"> </asp:TextBox>


    <asp:TextBox style="margin-left: 39.5%;" class="textos" runat="server" ID="empresaatual" ForeColor="Black" placeholder="Empresa Atual"></asp:TextBox>

    <asp:DropDownList runat="server" ForeColor="Black" style="margin-left: 39.5%;" class="textos" ID="areadeatuacaodrop">
        <asp:ListItem Value="" Text="Area de Atuação"></asp:ListItem>
        <asp:ListItem Value="Engenharia Biomédica" Text="Engenharia Biomédica"></asp:ListItem>
        <asp:ListItem Value="Engenharia Civil" Text="Engenharia Civil"></asp:ListItem>
        <asp:ListItem Value="Ciências Contábeis" Text="Ciências Contábeis"></asp:ListItem>
        <asp:ListItem Value="Direito" Text="Direito"></asp:ListItem>
        <asp:ListItem Value="Design Gráfico" Text="Design Gráfico"></asp:ListItem>
    </asp:DropDownList>
    
    <asp:DropDownList runat="server" class="textos" style="margin-left: 39.5%;" ForeColor="Black" placeholder="Nome Completo" ID="escolaridadedrop">
        <asp:ListItem Value="" Text="Nivel de Escolaridade"></asp:ListItem>
        <asp:ListItem Value="Ensino Fundamental" Text="Ensino Fundamental"></asp:ListItem>
        <asp:ListItem Value="Ensino Fundamental Completo" Text="Ensino Fundamental Completo"></asp:ListItem>
        <asp:ListItem Value="Ensino Medio" Text="Ensino Medio"></asp:ListItem>
        <asp:ListItem Value="Ensino Medio Completo" Text="Ensino Medio Completo"></asp:ListItem>
        <asp:ListItem Value="Ensino Tecnico" Text="Ensino Tecnico"></asp:ListItem>
        <asp:ListItem Value="Ensino Superior" Text="Ensino Superior"></asp:ListItem>
    </asp:DropDownList>
    
    <asp:FileUpload ID="FileUpload2"  class="btn btn-outline-info" style="margin-left: 39.5%;width:700px; "  AllowMultiple="false" accept="image/*" runat="server" />

    <body>
        <p style="color:red;">
            <asp:Label runat="server" ID="lblStatus" style="margin-left:39.5%;" Text=" "></asp:Label>
        </p>
    </body>
    <br />
    <asp:Button runat="server" ID="confirmabtn" class="btn btn-info" OnClick="confirmabtn_Click" Text="Confirmar" style="margin-left:44.5%;width:150px;height:40px;font-size:17px"/>

</asp:Content>
