<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarTelefono.aspx.cs" Inherits="Quiz02.Pages.EditarTelefono" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Editar Telefono
        </h1>

        <div>
            <div>
                <span>Id</span>
                <asp:TextBox ID="TxtId_Telefono" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
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
                <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="BtnGuardar_Click" />
                <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="BtnEliminar_Click" />
                <a href="ListaTelefonos.aspx" class="btn btn-default">Cancelar</a>
            </div>
        </div>
    </div>
</asp:Content>
