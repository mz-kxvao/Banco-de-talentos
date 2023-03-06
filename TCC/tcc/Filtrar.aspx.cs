using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;
using tcc.classe;

namespace tcc
{
    public partial class Tela_Admin : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void btnFiltro_Click(object sender, EventArgs e)
        {
            var clientes = new Negocio.Candidato().Read("", nometxt.Text,areadeatuacaodrop.SelectedValue, escolaridadedrop.SelectedValue, cidadetxt.Text, estadotxt.Text, empresaatual.Text);
            Session["dados"] = clientes;
            grdClientes.DataSource = clientes;
            grdClientes.DataBind();
        }

        protected void grdClientes_RowCommand(Object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument) + (grdClientes.PageIndex * grdClientes.PageSize);
            var clientes = (List<Candidato>)Session["dados"];

            if (e.CommandName == "Perfil")
            {
                
                
                    Response.Redirect("Perfil.aspx?id=" + clientes[index].id);
                
                
            }

            
        } 

        protected void grdClientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            var clientes = (List<Candidato>)Session["dados"];
            grdClientes.PageIndex = e.NewPageIndex;
            grdClientes.DataSource = clientes;
            grdClientes.DataBind();
        }
    }
}