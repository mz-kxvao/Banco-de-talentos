using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;

namespace tcc
{
    public partial class Cadastro : System.Web.UI.Page
    {
        private MySqlConnection connection;

        string anexo = "";

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

           
            if (FileUpload2.HasFile)
            {
                var FileExtension = Path.GetExtension(FileUpload2.PostedFile.FileName).Substring(1);
                anexo = Guid.NewGuid() + "." + FileExtension;
                FileUpload2.SaveAs(Server.MapPath("~") + "/Curriculos/" + anexo);
            }
        }
        

        protected void confirmabtn_Click(object sender, EventArgs e)
        {
            connection.Open();
            if(anexo.Equals("") == false)
            {
                var commando = new MySqlCommand($"UPDATE `candidato` SET nome = @nome, areadeatuacao = @areadeatuacao,telefone = @telefone,escolaridade = @escolaridade,cidade = @cidade,estado = @estado, EmpresaAtual = @EmpresaAtual, anexo = @anexo WHERE email = @email", connection);
                commando.Parameters.Add(new MySqlParameter("escolaridade", escolaridadedrop.SelectedItem.Text));
                commando.Parameters.Add(new MySqlParameter("areadeatuacao", areadeatuacaodrop.SelectedItem.Text));
                commando.Parameters.Add(new MySqlParameter("nome", nometxt.Text));
                commando.Parameters.Add(new MySqlParameter("telefone", telefonetxt.Text));
                commando.Parameters.Add(new MySqlParameter("email", emailtxt.Text));
                commando.Parameters.Add(new MySqlParameter("estado", estadotxt.Text));
                commando.Parameters.Add(new MySqlParameter("cidade", cidadetxt.Text));
                commando.Parameters.Add(new MySqlParameter("empresaatual", telefonetxt.Text));
                commando.Parameters.Add(new MySqlParameter("anexo", anexo));
                commando.ExecuteNonQuery();
            }
            else
            {
               
                lblStatus.Text = "Campo obrigatorio!";
            }
            
  

            connection.Close();
        }
    }
}