<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Filtrar.aspx.cs" Inherits="tcc.Tela_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <div class="container">
        <div class="row text-center"><b>TELA DO ADMINISTRADOR</b></div>
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-sm-3">
             <asp:Label runat="server" ID="nometxt" Visible="false"></asp:Label>
    <asp:Label runat="server" ID="telefonetxt" Visible="false"></asp:Label>
    <asp:Label runat="server" ID="emailtxt" Visible="false"></asp:Label>


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
    <p style= "text-align:justify; font-style:oblique"> Nivel de Escolaridade:
        <br />
     <asp:DropDownList runat="server" ID="escolaridadedrop" >
        <asp:ListItem Text=""></asp:ListItem>
        <asp:ListItem Text="Ensino Fundamental" ></asp:ListItem>
        <asp:ListItem Text="Ensino Fundamental Completo"></asp:ListItem>
        <asp:ListItem Text="Ensino Medio"></asp:ListItem>
        <asp:ListItem Text="Ensino Medio Completo"></asp:ListItem>
        <asp:ListItem Text="Ensino Tecnico"></asp:ListItem>
        <asp:ListItem Text="Ensino Superior"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <p style= "text-align:justify; font-style:oblique"> Area de atuação: 
     <br />
         <asp:DropDownList runat="server" ID="areadeatuacaodrop">
        <asp:ListItem Text=""></asp:ListItem>
        <asp:ListItem Text="Engenharia Biomédica"></asp:ListItem>
        <asp:ListItem Text="Engenharia Civil"></asp:ListItem>
        <asp:ListItem Text="Ciências Contábeis"></asp:ListItem>
        <asp:ListItem Text="Direito"></asp:ListItem>
        <asp:ListItem Text="Design Gráfico"></asp:ListItem>
    </asp:DropDownList>
        <br />
        <br />
     <asp:DropDownList runat="server" ID="DropDownList1" ></asp:DropDownList>
    
        
    </p>
        </div>
    </div>
    <br />
    <div class="row text-center">

        <asp:Button runat="server" ID="btnFiltro" Text="Filtrar" OnClick="btnFiltro_Click" />

    </div>
    <br />
    <div class="row">
        <asp:GridView runat="server" ID="grdClientes" Width="100%" AutoGenerateColumns="false"
            CssClass="table table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped"
            OnRowCommand="grdClientes_RowCommand" AllowPaging="true" PageSize="10" OnPageIndexChanging="grdClientes_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="NOME" />
                <asp:ButtonField ButtonType="Link" CommandName="Perfil" ControlStyle-CssClass="btn btn-warning" Text="Ver Perfil" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
