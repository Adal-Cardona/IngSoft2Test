using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CapaNegocio;

namespace IngSoft2Test
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCalcular_Click(object sender, EventArgs e)
        {
            double x = 0;

            try
            {
                x = Convert.ToDouble(this.txt_X.Text);
                double resultado = 0;

                Logica lgc = new Logica();
                resultado = lgc.CalcularY(x);

                this.txtResultado.Text = resultado.ToString();
            }
            catch (Exception ex)
            {
                this.lblMsg.Text = "Por favor, solo captura numeros";
            }

            
        }
    }
}