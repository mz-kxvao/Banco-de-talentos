using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tcc
{
    public partial class Confirma_Cadastro : System.Web.UI.Page
    {
       

        protected void initial_page_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

    }
}