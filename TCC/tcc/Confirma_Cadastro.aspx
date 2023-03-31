<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirma_Cadastro.aspx.cs" Inherits="tcc.Confirma_Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h1 class="card-title text-center mb-4" style="border-color:black;">Cadastro realizado com sucesso</h1>
                    <p class="card-text text-center" style="font-size:15px">O seu cadastro foi realizado com sucesso. Obrigado por se cadastrar em nosso site!</p>
                    <div class="text-center mt-4">
                       <asp:Button runat="server"  ID="initial_page" OnClick="initial_page_Click" text="Voltar para a página inicial" style ="width: 160px; height:30px; font-size:12px; color:white; background-color:cornflowerblue;" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>
