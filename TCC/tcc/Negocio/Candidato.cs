using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySqlConnector;
using tcc.classe;
using tcc;

namespace tcc.Negocio
{
    public class Candidato
    {
        private MySqlConnection connection;
        public Candidato()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

         public classe.Candidato Read(string id)
         {
             return this.Read(id, "","","","","","").FirstOrDefault();
         }

         public List<classe.Candidato> Read(string id, string nome, string areadeatuacaodrop, string escolaridadedrop,string cidadetxt,string estadotxt, string empresaatual)
         {
             var clientes = new List<classe.Candidato>();
             try
             {
                 connection.Open();


                 var comando = new MySqlCommand($"SELECT nome FROM `candidato` WHERE (1=1) ", connection);

                if (nome.Equals("") == false)
                {
                    comando.CommandText += $" AND nome like @nome";
                    comando.Parameters.Add(new MySqlParameter("nome", $"%{nome}%"));
                }

                if (areadeatuacaodrop.Equals("") == false)
                 {
                     comando.CommandText += " AND (areadeatuacao = @areadeatuacao) ";
                     comando.Parameters.Add(new MySqlParameter("areadeatuacao", $"%{areadeatuacaodrop}%"));
                 }

                 if (escolaridadedrop.Equals("") == false)
                 {
                     comando.CommandText += " AND (escolaridade = @escolaridade) ";
                     comando.Parameters.Add(new MySqlParameter("escolaridade", $"%{escolaridadedrop}%"));
                 }

                 if (cidadetxt.Equals("") == false)
                 {
                     comando.CommandText += " AND (cidade like @cidade) ";
                     comando.Parameters.Add(new MySqlParameter("cidade", $"%{cidadetxt}%"));
                 }

                 if (estadotxt.Equals("") == false)
                 {
                     comando.CommandText += " AND (estado = @estado) ";
                     comando.Parameters.Add(new MySqlParameter("estado", $"%{estadotxt}%"));
                 }

                 if (empresaatual.Equals("") == false)
                 {
                     comando.CommandText += " AND (EmpresaAtual = @EmpresaAtual) ";
                     comando.Parameters.Add(new MySqlParameter("EmpresaAtual", $"%{empresaatual}%"));
                 }
             }
             catch
             {

             }
             finally
             {
                 connection.Close();
             }
             return clientes;

         }
         
    }

}