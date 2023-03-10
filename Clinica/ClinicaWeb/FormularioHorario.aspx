<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioHorario.aspx.cs" Inherits="ClinicaWeb.FormularioHorario" %>


<asp:Content ID="ContentbodyHorarios" ContentPlaceHolderID="cphBody" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-3">
            </div>
            <div class="col-4">
                <h1><%= tituloFormulario %></h1>
            </div>
            <div class="col-5">
            </div>
        </div>

        <div class="row">
            <div class="col-3">
            </div>
            <div class="col-2">
                <div class="mb-3">
                    <label for="ddlHorarioDia" class="form-label">Día de la semana</label>
                </div>
                <div class="mb-3">
                    <label for="ddlHorarioInicio" class="form-label">Hora de Inicio</label>
                </div>
                <div class="mb-3">
                    <label for="ddlHorarioFin" class="form-label">Hora de Finalización</label>
                </div>
            </div>
            <div class="col-2">
                <div class="mb-3">
                    <asp:DropDownList ID="ddlHorarioDia" runat="server" CssClass="form-select">
                        <asp:ListItem Text="Lunes" />
                        <asp:ListItem Text="Martes" />
                        <asp:ListItem Text="Miércoles" />
                        <asp:ListItem Text="Jueves" />
                        <asp:ListItem Text="Viernes" />
                        <asp:ListItem Text="Sábado" />
                    </asp:DropDownList>
                </div>
                <div class="mb-3">
                    <asp:DropDownList ID="ddlHorarioInicio" runat="server" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="ddlHorarioInicio_SelectedIndexChanged">
                        <asp:ListItem Text="00:00" Value="0" />
                        <asp:ListItem Text="01:00" Value="1" />
                        <asp:ListItem Text="02:00" Value="2" />
                        <asp:ListItem Text="03:00" Value="3" />
                        <asp:ListItem Text="04:00" Value="4" />
                        <asp:ListItem Text="05:00" Value="5" />
                        <asp:ListItem Text="06:00" Value="6" />
                        <asp:ListItem Text="07:00" Value="7" />
                        <asp:ListItem Text="08:00" Value="8" />
                        <asp:ListItem Text="09:00" Value="9" />
                        <asp:ListItem Text="10:00" Value="10" />
                        <asp:ListItem Text="11:00" Value="11" />
                        <asp:ListItem Text="12:00" Value="12" />
                        <asp:ListItem Text="13:00" Value="13" />
                        <asp:ListItem Text="14:00" Value="14" />
                        <asp:ListItem Text="15:00" Value="15" />
                        <asp:ListItem Text="16:00" Value="16" />
                        <asp:ListItem Text="17:00" Value="17" />
                        <asp:ListItem Text="18:00" Value="18" />
                        <asp:ListItem Text="19:00" Value="19" />
                        <asp:ListItem Text="20:00" Value="20" />
                        <asp:ListItem Text="21:00" Value="21" />
                        <asp:ListItem Text="22:00" Value="22" />
                        <asp:ListItem Text="23:00" Value="23" />
                    </asp:DropDownList>
                </div>
                <div class="mb-3">
                    <asp:DropDownList ID="ddlHorarioFin" runat="server" CssClass="form-select">
                        <asp:ListItem Text="01:00" Value="1" />
                        <asp:ListItem Text="02:00" Value="2" />
                        <asp:ListItem Text="03:00" Value="3" />
                        <asp:ListItem Text="04:00" Value="4" />
                        <asp:ListItem Text="05:00" Value="5" />
                        <asp:ListItem Text="06:00" Value="6" />
                        <asp:ListItem Text="07:00" Value="7" />
                        <asp:ListItem Text="08:00" Value="8" />
                        <asp:ListItem Text="09:00" Value="9" />
                        <asp:ListItem Text="10:00" Value="10" />
                        <asp:ListItem Text="11:00" Value="11" />
                        <asp:ListItem Text="12:00" Value="12" />
                        <asp:ListItem Text="13:00" Value="13" />
                        <asp:ListItem Text="14:00" Value="14" />
                        <asp:ListItem Text="15:00" Value="15" />
                        <asp:ListItem Text="16:00" Value="16" />
                        <asp:ListItem Text="17:00" Value="17" />
                        <asp:ListItem Text="18:00" Value="18" />
                        <asp:ListItem Text="19:00" Value="19" />
                        <asp:ListItem Text="20:00" Value="20" />
                        <asp:ListItem Text="21:00" Value="21" />
                        <asp:ListItem Text="22:00" Value="22" />
                        <asp:ListItem Text="23:00" Value="23" />
                        <asp:ListItem Text="24:00" Value="24" />
                    </asp:DropDownList>
                    <asp:Label ID="lblAlerta" for="ddlHorarioFin" runat="server" Text="" CssClass="form-label" ClientIDMode="Static"></asp:Label>
                </div>
            </div>
            <div class="col-5">
            </div>
        </div>

        <div class="row">
            <div class="col-3">
            </div>
            <div class="col-2">
                <asp:Button ID="btnGuardarHorario" runat="server" Text="Guardar" CssClass="btn btn-primary btn-lg" OnClick="btnGuardarHorario_Click" />
            </div>
            <div class="col-2">
                <asp:Button ID="btnCancelarHorario" runat="server" Text="Cancelar" CssClass="btn btn-primary btn-lg" OnClick="btnCancelarHorario_Click" />
            </div>
            <div class="col-5">
            </div>
        </div>

    </div>
</asp:Content>

