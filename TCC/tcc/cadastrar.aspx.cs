using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;

namespace tcc
{
    public partial class cadastrar2 : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void confisenha_Click(object sender, EventArgs e)
        {
            connection.Open();

            if(senhatxt.Text == confsenha.Text)
            {
                var comando = new MySqlCommand($"INSERT INTO candidato (email,senha) VALUES (@email,MD5(@senha))", connection);
                comando.Parameters.Add(new MySqlParameter("email", emailtxt.Text));
                comando.Parameters.Add(new MySqlParameter("senha", senhatxt.Text));
                comando.ExecuteNonQuery();
            }

            connection.Close();

            Response.Redirect("/Login.aspx?email=" + emailtxt.Text);
            
        }
    }
}