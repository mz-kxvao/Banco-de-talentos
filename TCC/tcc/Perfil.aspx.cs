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
                
            }
        }
    }
}