using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaDatos;

namespace CapaNegocio
{
    public class Logica
    {
        public double CalcularY(double x)
        {
            double resultado = 0;
            
            Datos datos = new Datos();

            resultado = (datos.a * Math.Pow(x, 2)) + (datos.b * x) + datos.c;

            return resultado;
        }
    }
}
