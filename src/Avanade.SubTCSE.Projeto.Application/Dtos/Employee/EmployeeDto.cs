using Avanade.SubTCSE.Projeto.Application.Dtos.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Application.Dtos.Employee
{
    class EmployeeDto : BaseDto
    {
        public string PrimeiroNome { get; set; }

        public string SobreNome { get; set; }

        public DateTime Aniversario { get; set; }

        public bool Ativo { get; set; }

        public decimal Salario { get; set; }

        public EmployeeRole.EmployeeRoleDto Cargo { get; set; }
    }
}
