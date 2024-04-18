<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearTelefono.aspx.cs" Inherits="Quiz02.Pages.CrearTelefono" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>
            Formulario de creación
        </h1>
    </div>

    <div>
        <div>
            <span>Marca</span>
            <asp:TextBox ID="TxtMarca" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <span>Nombre</span>
            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <span>Año de fabricación</span>
            <asp:TextBox ID="TxtAnhoFabricacion" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <span>Fecha de lanzamiento</span>
            <asp:TextBox ID="TxtFechaLanzamiento" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <span>Precio</span>
            <asp:TextBox ID="TxtPrecio" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" BackColor="#33CC33"
                ForeColor="White" CssClass="btn btn-primary" OnClick="BtnGuardar_Click" />
            <a href="ListaTelefonos.aspx" class=" btn btn-light">Cancelar</a>
        </div>
    </div>
</asp:Content>
