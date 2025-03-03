using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class Datos
    {
        public double a = Convert.ToDouble(ConfigurationSettings.AppSettings["Valor_A"].ToString());
        public double b = Convert.ToDouble(ConfigurationSettings.AppSettings["Valor_B"].ToString());
        public double c = Convert.ToDouble(ConfigurationSettings.AppSettings["Valor_C"].ToString());
    }
}
