using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication6.ServiceReference6;
namespace WebApplication6
{
    public partial class basico1 : System.Web.UI.Page
    {
        private int puntajeCorrectas=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
                string correoUsuario = (string)Session["correoUsuario"];
            if (Session["puntajeCorrectas"] != null)
            {
                puntajeCorrectas = (int)Session["puntajeCorrectas"];
            }

        }
        protected void GuardarPuntaje_Click(object sender, EventArgs e)
        {
            string correoUsuario = (string)Session["correoUsuario"];
            int puntaje = int.Parse(hdnPuntajeBasico.Value);

            string Conexion = "Data Source=DESKTOP-9LE8C8C;Initial Catalog=Ingles;Integrated Security=True;";
            using (SqlConnection data = new SqlConnection(Conexion))
            {
                string query = "INSERT INTO dbo.Puntajes(puntajes, usuario) VALUES(@puntajes, @usuario);";
                using (SqlCommand cmd = new SqlCommand(query, data))
                {
                    cmd.Parameters.AddWithValue("@puntajes", puntaje);
                    cmd.Parameters.AddWithValue("@usuario", correoUsuario);
                    data.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            // Redirige al inicio u a otra página después de guardar el puntaje
            Response.Redirect("basico1.aspx");
        } 

    }
}