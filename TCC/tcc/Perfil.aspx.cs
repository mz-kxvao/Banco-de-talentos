using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tcc
{
    public partial class Perfil : System.Web.UI.Page
    {
        public static string curriculo;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["id"].ToString();
                var cliente = new Negocio.Candidato().Read(id);
                
                nometxt.Text = cliente.nome;
                areadeatuacaotxt.Text = cliente.areadeatuacaodrop;
                empresaatual.Text = cliente.empresaatual;
                escolaridadetxt.Text = cliente.escolaridadedrop;
                cidadetxt.Text = cliente.cidadetxt;
                estadotxt.Text = cliente.estadotxt;
                curriculo = cliente.anexo;
                
            }
        }

        protected void anexo_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Curriculos/" + curriculo);
        }
    }
}