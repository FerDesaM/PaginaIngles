using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication6.ServiceReference2;
namespace WebApplication6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void botton_2click(object sender, EventArgs e)
        {
            string nombre = this.nombre.Text;
            string contraseña = this.contraseña.Text;
            string email = this.email.Text;
            IcargasqlClient client = new IcargasqlClient();
            client.guardar_datos(email, nombre, contraseña);
            Response.Redirect("PAGINA_PRINCIPAL.aspx");

        }
    }
}