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
             return this.Read(id, "","","","","","","").FirstOrDefault();
         }

         public List<classe.Candidato> Read(string id, string nome, string email, string areadeatuacaodrop, string escolaridadedrop,string cidadetxt,string estadotxt, string empresaatual)
         {
             var clientes = new List<classe.Candidato>();
             try
             {
                 connection.Open();


                 var comando = new MySqlCommand($"SELECT * FROM `candidato` WHERE (1=1) ", connection);

                if(id.Equals("") == false)
                {
                    comando.CommandText += $" AND id like @id";
                    comando.Parameters.Add(new MySqlParameter("id", $"%{id}%"));
                }

                if (nome.Equals("") == false)
                {
                    comando.CommandText += $" AND nome like @nome";
                    comando.Parameters.Add(new MySqlParameter("nome", $"%{nome}%"));
                }

                if (nome.Equals("") == false)
                {
                    comando.CommandText += $" AND nome like @email";
                    comando.Parameters.Add(new MySqlParameter("email", $"%{email}%"));
                }

                if (areadeatuacaodrop.Equals("") == false)
                 {
                     comando.CommandText += " AND (areadeatuacao like @areadeatuacao) ";
                     comando.Parameters.Add(new MySqlParameter("areadeatuacao", $"%{areadeatuacaodrop}%"));
                 }

                 if (escolaridadedrop.Equals("") == false)
                 {
                     comando.CommandText += " AND (escolaridade like @escolaridade) ";
                     comando.Parameters.Add(new MySqlParameter("escolaridade", $"%{escolaridadedrop}%"));
                 }

                 if (cidadetxt.Equals("") == false)
                 {
                     comando.CommandText += " AND (cidade like @cidade) ";
                     comando.Parameters.Add(new MySqlParameter("cidade", $"%{cidadetxt}%"));
                 }

                 if (estadotxt.Equals("") == false)
                 {
                     comando.CommandText += " AND (estado like @estado) ";
                     comando.Parameters.Add(new MySqlParameter("estado", $"%{estadotxt}%"));
                 }

                 if (empresaatual.Equals("") == false)
                 {
                     comando.CommandText += " AND (EmpresaAtual like @EmpresaAtual) ";
                     comando.Parameters.Add(new MySqlParameter("EmpresaAtual", $"%{empresaatual}%"));
                 }
                
                var reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    clientes.Add(new classe.Candidato
                    {
                        id = reader.GetInt32("id"),
                        nome = reader.GetString("nome"),
                        email = reader.GetString("email"),
                        areadeatuacaodrop = reader.GetString("areadeatuacao"),
                        escolaridadedrop = reader.GetString("escolaridade"),
                        cidadetxt = reader.GetString("cidade"),
                        estadotxt = reader.GetString("estado"),
                        empresaatual = reader.GetString("EmpresaAtual"),
                        anexo = reader.GetString("anexo")
                    });



                }
             }
             catch(Exception err)
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