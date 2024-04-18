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
    public partial class EditarTelefono : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                int id_Telefono = Convert.ToInt32(Request.QueryString["id"]);
                TxtId_Telefono.Text = id_Telefono.ToString();

                try
                {
                    using (PV_Quiz02Entities db = new PV_Quiz02Entities())
                    {
                        var datosTelefono = db.spConsultarTelefonoPorId(id_Telefono).FirstOrDefault();
                        if (datosTelefono != null)
                        {
                            TxtMarca.Text = datosTelefono.marca;
                            TxtNombre.Text = datosTelefono.nombre;
                            TxtAnhoFabricacion.Text = datosTelefono.anhoFabricacion.ToString();
                            TxtFechaLanzamiento.Text = datosTelefono.fechaLanzamiento.ToString();
                            TxtPrecio.Text = datosTelefono.precio.ToString();
                        }
                    }
                }
                catch { }
            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {

            try
            {
                int id_Telefono = Convert.ToInt32(TxtId_Telefono.Text.Trim());
                string marca = TxtMarca.Text.Trim();
                string nombre = TxtNombre.Text.Trim();
                int anhoFabricacion = int.Parse(TxtAnhoFabricacion.Text.Trim());
                DateTime fechaLanzamiento = DateTime.ParseExact(TxtFechaLanzamiento.Text.Trim(), "dd-MM-yyyy", CultureInfo.InvariantCulture);
                int precio = int.Parse(TxtPrecio.Text.Trim());

                using (PV_Quiz02Entities db = new PV_Quiz02Entities())
                {
                    db.spEditarTelefono(id_Telefono, marca, nombre, anhoFabricacion, fechaLanzamiento, precio);
                }
            }
            catch { }
            Response.Redirect("~/Pages/Resultado2.aspx");

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                int id_Telefono = Convert.ToInt32(TxtId_Telefono.Text.Trim());

                using (PV_Quiz02Entities db = new PV_Quiz02Entities())
                {
                    db.spEliminarTelefono(id_Telefono);
                }
            }
            catch { }
        }
    }
}