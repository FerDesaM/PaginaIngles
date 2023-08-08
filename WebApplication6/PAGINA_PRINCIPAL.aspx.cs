using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication6.ServiceReference3;

namespace WebApplication6
{
    public partial class PAGINA_PRINCIPAL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            string email = usuario_text.Text;
            string contraseña = contraseña_text.Text;

            // Aquí llamas al método verificar_usuario que definimos previamente
            IverificarClient client = new IverificarClient();
           bool verificar= client.verificar_datos(email, contraseña);
            if (verificar)
            {
                Session["correoUsuario"] = email;
                // El usuario existe en la base de datos, redirige a la página de juego
                Response.Redirect("Pagina_de_juego.aspx");
            }
            else
            {
                // El usuario no existe en la base de datos, muestra una alerta
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Usuario no registrado. Por favor, regístrate.');", true);
            }
        }
    }
}