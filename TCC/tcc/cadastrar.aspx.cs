using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
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
            lblStatus.Visible = false;
            lblsenha.Visible = false;
        }

        protected void confisenha_Click(object sender, EventArgs e)
        {
            string email = emailtxt.Text;

            Regex rg = new Regex(@"^(?("")("".+?""@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$");

            if (rg.IsMatch(email))
            {

                connection.Open();
                var commando = new MySqlCommand($"SELECT * FROM `candidato` WHERE email = @email", connection);
                commando.Parameters.Add(new MySqlParameter("email", emailtxt.Text));
                var reader = commando.ExecuteReader();
                if (reader.Read())
                {
                    lblStatus.Text = "email ja usado!";
                    lblStatus.Visible = true;
                }

                else
                {
                    connection.Close();

                    if(senhatxt.Text == "")
                    {
                        lblsenha.Text = "Insira uma senha!";
                        lblsenha.Visible = true;
                    }
                    else
                    {
                        
                        if (senhatxt.Text == confsenha.Text)
                        {
                            connection.Open();

                            var comando = new MySqlCommand($"INSERT INTO candidato (email,senha) VALUES (@email,MD5(@senha))", connection);
                            comando.Parameters.Add(new MySqlParameter("email", emailtxt.Text));
                            comando.Parameters.Add(new MySqlParameter("senha", senhatxt.Text));
                            comando.ExecuteNonQuery();

                            Response.Redirect("/Login.aspx?email=" + emailtxt.Text);
                            connection.Close();
                        }
                        else
                        {
                            lblsenha.Text = "Senhas diferentes!";
                            lblsenha.Visible = true;
                        }
                    }
                    

                }

            }
            else
            {
                lblStatus.Text = "email invalido!";
                lblStatus.Visible = true;
            }

           




           
            
        }
    }
}