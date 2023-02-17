﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;

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
            connection.Open();

            var comando = new MySqlCommand($"SELECT * FROM `candidato` WHERE (areadeatuacao = @areadeatuacao), (escolaridade = @escolaridade), (cidade = @cidade), (estado = @estado), (EmpresaAtual = @EmpresaAtual) ", connection);
            comando.Parameters.Add(new MySqlParameter("areadeatuacao", areadeatuacaodrop.SelectedItem.Text));
            comando.Parameters.Add(new MySqlParameter("escolaridade", escolaridadedrop.SelectedItem.Text));
            comando.Parameters.Add(new MySqlParameter("cidade", cidadetxt.Text));
            comando.Parameters.Add(new MySqlParameter("estado", estadotxt.Text));
            comando.Parameters.Add(new MySqlParameter("EmpresaAtual", empresaatual.Text));
            comando.ExecuteNonQuery();
            


        }
    }
}