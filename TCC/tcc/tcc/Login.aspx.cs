using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;


namespace tcc
{
    public partial class Login : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);

            if (!IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                {
                    string email = Request.QueryString["email"].ToString();
                    if (Request.QueryString["email"].ToString() == null)
                    {
                        emailtxt.Text = "";
                    }
                    else
                    {
                        emailtxt.Text = email;
                    }
                }
            }
        }

        protected void confirmabtn_Click(object sender, EventArgs e)
        {
            connection.Open();

            var comando = new MySqlCommand($"SELECT * FROM candidato WHERE (email = @email) AND senha = MD5(@senha)", connection);
            comando.Parameters.Add(new MySqlParameter("email", emailtxt.Text));
            comando.Parameters.Add(new MySqlParameter("senha", senhatxt.Text));
            comando.ExecuteReader();

            connection.Close();

            Response.Redirect("/Cadastro.aspx?email=" + emailtxt.Text);
        }
    }
}