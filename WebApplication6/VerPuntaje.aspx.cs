using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarPuntajes();
        }
        private void CargarPuntajes()
        {
            string correoUsuario = (string)Session["correoUsuario"];

            string Conexion = "Data Source=DESKTOP-9LE8C8C;Initial Catalog=Ingles;Integrated Security=True;";
            using (SqlConnection data = new SqlConnection(Conexion))
            {
                string query = "SELECT puntajes, usuario FROM dbo.Puntajes WHERE usuario = @usuario";
                using (SqlCommand cmd = new SqlCommand(query, data))
                {
                    cmd.Parameters.AddWithValue("@usuario", correoUsuario);
                    data.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    gridPuntajes.DataSource = reader;
                    gridPuntajes.DataBind();
                    reader.Close();
                }
            }
        }
    }
}