using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Controlador;

namespace ClinicaWeb
{
    public partial class FormularioEspecialidad : System.Web.UI.Page
    {
        public Especialidad especialidadModificar { get; set; }
        public string tituloFormulario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            EspecialidadNegocio especialidadNegocio;
            try
            {
                if (!Helpers.Validacion.ValidarPermisos(this, "Administrador"))
                {
                    Session.Add("pagOrigen", "Turnos.aspx");
                    Session.Add("excepcion", new Exception("Esta intentando ingresar a una seccion para la que no tiene permisos de acceso."));
                    Response.Redirect("Error.aspx", false);
                }

                if (!(Session["especialidadesModificar"] is null))
                {
                    tituloFormulario = "Modificación de Especialidad";
                    int id = (int)Session["especialidadesModificar"];
                    especialidadNegocio = new EspecialidadNegocio();
                    especialidadModificar = especialidadNegocio.buscar_con_id(id);
                    if (!IsPostBack)
                    {
                        tbxEspecilidadNombre.Text = especialidadModificar.Nombre;
                    }
                }
                else
                {
                    tituloFormulario = "Alta de Especialidad";
                }
            }
            catch (Exception excepcion)
            {
                Session.Add("pagOrigen", "Especialidades.aspx");
                Session.Add("excepcion", excepcion);
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnGuardarEspecialidad_Click(object sender, EventArgs e)
        {
            Especialidad especialidad;
            EspecialidadNegocio especialidadNegocio;
            try
            {
                especialidadNegocio = new EspecialidadNegocio();

                if (Session["especialidadesModificar"] is null)
                {
                    if (especialidadNegocio.buscar_con_nombre(tbxEspecilidadNombre.Text) is null)
                    {
                        especialidad = new Especialidad();
                        especialidad.Nombre = tbxEspecilidadNombre.Text;
                        especialidadNegocio.crear(especialidad);
                        Session.Remove("especialidadesModificar");
                        Response.Redirect("Especialidades.aspx", false);
                    }
                    else
                    {
                        tbxEspecilidadNombre.CssClass = "form-control is-invalid";
                        lblEspecilidadNombre.CssClass = "form-label invalid-feedback";
                        lblEspecilidadNombre.Text = "El campo que intenta ingresar ya existe.";
                    }
                }
                else
                {
                    if (especialidadNegocio.buscar_con_nombre(tbxEspecilidadNombre.Text) is null || tbxEspecilidadNombre.Text == especialidadModificar.Nombre)
                    {
                        especialidadModificar.Nombre = tbxEspecilidadNombre.Text;
                        especialidadNegocio.actualizar(especialidadModificar);
                        Session.Remove("especialidadesModificar");
                        Response.Redirect("Especialidades.aspx", false);
                    }
                    else
                    {
                        tbxEspecilidadNombre.CssClass = "form-control is-invalid";
                        lblEspecilidadNombre.CssClass = "form-label invalid-feedback";
                        lblEspecilidadNombre.Text = "El campo que intenta ingresar ya existe.";
                    }
                }

            }
            catch (Exception excepcion)
            {
                Session.Add("pagOrigen", "Especialidades.aspx");
                Session.Add("excepcion", excepcion);
                Response.Redirect("Error.aspx", false);
            }

        }

        protected void btnCancelarEspecialidad_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Especialidades.aspx", false);
            }
            catch (Exception excepcion)
            {
                Session.Add("pagOrigen", "Especialidades.aspx");
                Session.Add("excepcion", excepcion);
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}