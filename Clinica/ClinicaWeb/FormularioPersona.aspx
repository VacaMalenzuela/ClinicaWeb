<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioPersona.aspx.cs" Inherits="ClinicaWeb.FormularioPersona" %>



<asp:Content ID="contentBodyPersona" ContentPlaceHolderID="cphBody" runat="server">

    <script>

        function Validar() {

            let estado = true;

            let pacienteDNI = document.getElementById("tbxDNI").value;
            if (pacienteDNI === "") {
                document.getElementById("tbxDNI").className = "form-control is-invalid";
                document.getElementById("lblDNI").innerText = "El campo no puede estar vacío.";
                document.getElementById("lblDNI").className = "form-label invalid-feedback";

                estado = false;
            }
            else {
                document.getElementById("tbxDNI").className = "form-control is-valid";
                document.getElementById("lblDNI").innerText = "";
            }

            let pacienteNombre = document.getElementById("tbxNombre").value;
            if (pacienteNombre === "") {
                document.getElementById("tbxNombre").className = "form-control is-invalid";
                document.getElementById("lblNombre").innerText = "El campo no puede estar vacío.";
                document.getElementById("lblNombre").className = "form-label invalid-feedback";

                estado = false;
            }
            else {
                document.getElementById("tbxNombre").className = "form-control is-valid";
                document.getElementById("lblNombre").innerText = "";
            }

            let pacienteApelliddo = document.getElementById("tbxApellido").value;
            if (pacienteApelliddo === "") {
                document.getElementById("tbxApellido").className = "form-control is-invalid";
                document.getElementById("lblApellido").innerText = "El campo no puede estar vacío.";
                document.getElementById("lblApellido").className = "form-label invalid-feedback";

                estado = false;
            }
            else {
                document.getElementById("tbxApellido").className = "form-control is-valid";
                document.getElementById("lblApellido").innerText = "";
            }

            let pacienteEmail = document.getElementById("tbxEmail").value;
            if (pacienteEmail === "") {
                document.getElementById("tbxEmail").className = "form-control is-invalid";
                document.getElementById("lblEmail").innerText = "El campo no puede estar vacío.";
                document.getElementById("lblEmail").className = "form-label invalid-feedback";

                estado = false;
            }
            else {
                document.getElementById("tbxEmail").className = "form-control is-valid";
                document.getElementById("lblEmail").innerText = "";
            }

            let usuario = document.getElementById("ckbUsuario").checked;
            if (document.getElementById("ckbUsuario").checked === true) {

                let nombreUsuario = document.getElementById("tbxNombreUsuario").value;
                if (nombreUsuario === "") {
                    document.getElementById("tbxNombreUsuario").className = "form-control is-invalid";
                    document.getElementById("lblNombreUsuario").className = "form-label invalid-feedback";
                    document.getElementById("lblNombreUsuario").innerText = "El campo no puede estar vacío.";
                    estado = false;
                }
                else {
                    document.getElementById("tbxNombreUsuario").className = "form-control is-valid";
                    document.getElementById("lblNombreUsuario").innerText = "";
                }

                let contraseñaUsuario = document.getElementById("tbxContraseñaUsuario").value;
                let confirmarContraseñaUsuario = document.getElementById("tbxConfirmarContraseñaUsuario").value;

                if (contraseñaUsuario != confirmarContraseñaUsuario) {
                    document.getElementById("tbxContraseñaUsuario").className = "form-control is-invalid";
                    document.getElementById("tbxConfirmarContraseñaUsuario").className = "form-control is-invalid";
                    document.getElementById("lblContraseñaUsuario").className = "form-label invalid-feedback";
                    document.getElementById("lblContraseñaUsuario").innerText = "Las contraseñas no coinciden. ";
                    document.getElementById("lblConfirmarContraseñaUsuario").className = "form-label invalid-feedback";
                    document.getElementById("lblConfirmarContraseñaUsuario").innerText = "Las contraseñas no coinciden. ";
                    estado = false;

                    if (contraseñaUsuario === "") {
                        document.getElementById("tbxContraseñaUsuario").className = "form-control is-invalid";
                        document.getElementById("lblContraseñaUsuario").className = "form-label invalid-feedback";
                        document.getElementById("lblContraseñaUsuario").innerText += "La contraseña no puede estar vacía. ";
                        estado = false;
                    }

                    if (confirmarContraseñaUsuario === "") {
                        document.getElementById("tbxConfirmarContraseñaUsuario").className = "form-control is-invalid";
                        document.getElementById("lblConfirmarContraseñaUsuario").className = "form-label invalid-feedback";
                        document.getElementById("lblConfirmarContraseñaUsuario").innerText += "La contraseña no puede estar vacía. ";
                        estado = false;
                    }

                }
                else {
                    document.getElementById("tbxContraseñaUsuario").className = "form-control is-valid";
                    document.getElementById("lblContraseñaUsuario").innerText = "";
                    document.getElementById("tbxConfirmarContraseñaUsuario").className = "form-control is-valid";
                    document.getElementById("lblConfirmarContraseñaUsuario").innerText = "";

                    if (contraseñaUsuario === "") {
                        document.getElementById("tbxContraseñaUsuario").className = "form-control is-invalid";
                        document.getElementById("lblContraseñaUsuario").className = "form-label invalid-feedback";
                        document.getElementById("lblContraseñaUsuario").innerText += "La contraseña no puede estar vacía. ";
                        estado = false;
                    }

                    if (confirmarContraseñaUsuario === "") {
                        document.getElementById("tbxConfirmarContraseñaUsuario").className = "form-control is-invalid";
                        document.getElementById("lblConfirmarContraseñaUsuario").className = "form-label invalid-feedback";
                        document.getElementById("lblConfirmarContraseñaUsuario").innerText += "La contraseña no puede estar vacía. ";
                        estado = false;
                    }

                }
            }

            return estado;
        }

    </script>

    <div class="container-fluid">

        <div class="row">
            <div class="col-2">
            </div>
            <div class="col-4">
                <h1><%= tituloFormulario %></h1>
            </div>
            <div class="col-6">
            </div>
        </div>

        <div class="row">
            <div class="col-2">
            </div>
            <div class="col-4">
                <%-- Aca arranca la carga de la persona --%>
                <div class="mb-3">
                    <label for="tbxDNI" class="form-label">Documento Nacional de Identidad</label>
                    <asp:TextBox ID="tbxDNI" runat="server" CssClass="form-control" OnTextChanged="tbxDNI_TextChanged" AutoPostBack="true" ClientIDMode="Static"></asp:TextBox>
                    <asp:Label ID="lblDNI" runat="server" Text="" ClientIDMode="Static"></asp:Label>
                </div>
                <div class="mb-3">
                    <label for="tbxNombre" class="form-label">Nombre</label>
                    <asp:TextBox ID="tbxNombre" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                    <asp:Label ID="lblNombre" runat="server" Text="" ClientIDMode="Static"></asp:Label>
                </div>
                <div class="mb-3">
                    <label for="tbxApellido" class="form-label">Apellido</label>
                    <asp:TextBox ID="tbxApellido" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                    <asp:Label ID="lblApellido" runat="server" Text="" ClientIDMode="Static"></asp:Label>
                </div>
                <div class="mb-3">
                    <label for="tbxEmail" class="form-label">Email</label>
                    <asp:TextBox ID="tbxEmail" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                    <asp:Label ID="lblEmail" runat="server" Text="" ClientIDMode="Static"></asp:Label>
                </div>
                <div class="mb-4">
                    <div class="form-check">
                        <asp:CheckBox ID="ckbUsuario" runat="server" ClientIDMode="Static" AutoPostBack="true" />
                        <label for="ckbUsuario" class="form-check-label">Requiere ususario</label>
                     </div>
                </div>
            </div>

            <div class="col-4">
                <%-- aca arranca la carga del usuario --%>
                <% if (ckbUsuario.Checked)
                    { %>
                <div class="mb-3">
                    <label for="tbxNombreUsuario" class="form-label">Nombre de Usuario</label>
                    <asp:TextBox ID="tbxNombreUsuario" runat="server" CssClass="form-control" OnTextChanged="tbxNombreUsuario_TextChanged" AutoPostBack="true" ClientIDMode="Static"></asp:TextBox>
                    <asp:Label ID="lblNombreUsuario" runat="server" Text="" ClientIDMode="Static"></asp:Label>
                </div>
                <div class="mb-3">
                    <label for="tbxContraseñaUsuario" class="form-label">Contraseña</label>
                    <asp:TextBox ID="tbxContraseñaUsuario" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                    <asp:Label ID="lblContraseñaUsuario" runat="server" Text="" ClientIDMode="Static"></asp:Label>
                </div>
                <div class="mb-3">
                    <label for="tbxConfirmarContraseñaUsuario" class="form-label">Repita la contraseña</label>
                    <asp:TextBox ID="tbxConfirmarContraseñaUsuario" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                    <asp:Label ID="lblConfirmarContraseñaUsuario" runat="server" Text="" ClientIDMode="Static"></asp:Label>
                </div>
                <div class="mb-3">
                    <label for="ddlPerfil" class="form-label">Tipo de perfil</label>
                    <asp:DropDownList ID="ddlPerfil" runat="server" CssClass="form-select"></asp:DropDownList>
                </div>
                <%-- Acordate que al guardar debe guardar el usuario asignar el id a la personba y guardar la persona --%>
                <% } %>
            </div>

            <div class="col-2">
            </div>
        </div>

        <div class="row">
            <%-- aca los botones para guardar o cancelar --%>
            <div class="col-2">
            </div>
            <div class="col-2">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary btn-lg" OnClientClick="return Validar()" OnClick="btnGuardar_Click" />
            </div>
            <div class="col-2">
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary btn-lg" OnClick="btnCancelar_Click" />
            </div>
            <div class="col-6">
            </div>
        </div>

    </div>
</asp:Content>

