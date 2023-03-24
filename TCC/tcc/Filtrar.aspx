<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Filtrar.aspx.cs" Inherits="tcc.Tela_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <link href="filtro.css" rel="stylesheet" />

    <h2>Lista de Candidatos</h2>  
    
    <div class="row">
        <div class="col-sm-3">
             <asp:Label runat="server" ID="nometxt" Visible="false"></asp:Label>
    <asp:Label runat="server" ID="telefonetxt" Visible="false"></asp:Label>
    <asp:Label runat="server" ID="emailtxt" Visible="false"></asp:Label>

    <asp:TextBox ForeColor="Black" class="texto" runat="server" ID="estadotxt" placeholder="Estado"></asp:TextBox>
    
    <asp:TextBox ForeColor="Black" class="texto" runat="server" ID="cidadetxt" placeholder="Cidade"></asp:TextBox>
   
    <asp:TextBox ForeColor="Black" class="texto" runat="server" ID="empresaatual" placeholder="Empresa atual"></asp:TextBox>
  
   
     <asp:DropDownList runat="server" ForeColor="Gray" class="texto" ID="escolaridadedrop" >
        <asp:ListItem Value="" Text="Nivel de Escolaridade"></asp:ListItem>
        <asp:ListItem Value="Ensino Fundamental" Text="Ensino Fundamental" ></asp:ListItem>
        <asp:ListItem Value="Ensino Fundamental Completo" Text="Ensino Fundamental Completo"></asp:ListItem>
        <asp:ListItem Value="Ensino Medio" Text="Ensino Medio"></asp:ListItem>
        <asp:ListItem Value="Ensino Medio Completo" Text="Ensino Medio Completo"></asp:ListItem>
        <asp:ListItem Value="Ensino Tecnico" Text="Ensino Tecnico"></asp:ListItem>
        <asp:ListItem Value="Ensino Superior" Text="Ensino Superior"></asp:ListItem>
    </asp:DropDownList>
    
         <asp:DropDownList runat="server" ForeColor="Gray" class="texto" ID="areadeatuacaodrop">
        <asp:ListItem Value="" Text="Area de Atuação"></asp:ListItem>
        <asp:ListItem Value="Engenharia Biomédica" Text="Engenharia Biomédica"></asp:ListItem>
        <asp:ListItem Value="Engenharia Civil" Text="Engenharia Civil"></asp:ListItem>
        <asp:ListItem Value="Ciências Contábeis" Text="Ciências Contábeis"></asp:ListItem>
        <asp:ListItem Value="Direito" Text="Direito"></asp:ListItem>
        <asp:ListItem Value="Design Gráfico" Text="Design Gráfico"></asp:ListItem>
    </asp:DropDownList>

            </div>
    </div>

        <asp:Button runat="server" ID="btnFiltro" Text="Filtrar" class="btn btn-info" style="width:10%; margin-left: 590px; height: 40px; font-size: 15px;" OnClick="btnFiltro_Click" />

   <br />
    <br />
    <div class="row">
        <asp:GridView runat="server" ID="grdClientes" Font-Size="180%" Width="100%" AutoGenerateColumns="false"
            CssClass="table table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped"
            OnRowCommand="grdClientes_RowCommand" AllowPaging="true" PageSize="10" OnPageIndexChanging="grdClientes_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="NOME" />
                <asp:ButtonField ButtonType="Link" CommandName="Perfil" ControlStyle-Font-Size="80%" ControlStyle-CssClass="btn btn-warning" Text="Ver Perfil" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
