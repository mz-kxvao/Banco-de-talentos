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
            var reader = comando.ExecuteReader();

            if (reader.Read())
            {
                Response.Redirect("/Registro.aspx?email=" + emailtxt.Text);
            }
            connection.Close();

            connection.Open();
            comando = new MySqlCommand($"SELECT * FROM admin WHERE (email = @email) AND senha = (@senha)", connection);
            comando.Parameters.Add(new MySqlParameter("email", emailtxt.Text));
            comando.Parameters.Add(new MySqlParameter("senha", senhatxt.Text));
            reader = comando.ExecuteReader();

            if (reader.Read())
            {
                if (emailtxt.Text == "admin" && senhatxt.Text == "1234")
                {
                    Response.Redirect("/Tela admin.aspx?");
                }
            }

            else
            {
                lblStatus.Text= "Senha ou email invalidos";
            }
            connection.Close();

            
        }
    }
}