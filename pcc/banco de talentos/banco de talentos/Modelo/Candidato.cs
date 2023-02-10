using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace banco_de_talentos.Candidato

{
    public class Candidato
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public int Idade { get; set; }
        public string AreaAtuacao { get; set; }
        public int Telefone { get; set; }
        public string Email { get; set;}
        public string NivelEscola { get; set; }
    }
}