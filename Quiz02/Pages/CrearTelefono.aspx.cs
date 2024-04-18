using Quiz02.Data;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz02.Pages
{
    public partial class CrearTelefono : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            string marca = TxtMarca.Text.Trim().Substring(0,100);
            string nombre = TxtNombre.Text.Trim().Substring(0, 50);
            int anhoFabricacion = int.Parse(TxtAnhoFabricacion.Text.Trim().Substring(2000, 2025));
            DateTime fechaLanzamiento = DateTime.ParseExact(TxtFechaLanzamiento.Text.Trim(), "dd-MM-yyyy", CultureInfo.InvariantCulture);
            int precio = int.Parse(TxtPrecio.Text.Trim().Substring(1, 5000));

            try
            {
                using (PV_Quiz02Entities db = new PV_Quiz02Entities())
                {
                    db.spCrearTelefono(marca, nombre, anhoFabricacion, fechaLanzamiento, precio);
                }
            }
            catch (Exception) { }

            Response.Redirect("~/Pages/Resultado.aspx");
        }
    }
}