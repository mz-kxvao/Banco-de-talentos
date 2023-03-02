using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;

namespace tcc
{
    public partial class TelaAdmin : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> minhaLista = new List<string>();
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            {
                var comando = new MySqlCommand($"SELECT * FROM candidato WHERE 1", connection);
                connection.Open();
                var leitor = comando.ExecuteReader();
                while (leitor.Read())
                {
                    minhaLista.Add(leitor.GetString(0));
                }
            }

        }
    }
}