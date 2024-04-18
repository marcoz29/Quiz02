<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaTelefonos.aspx.cs" Inherits="Quiz02.Pages.ListaTelefonos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Lista de telefonos
        </h1>
    </div>

    <div>
        <a href="CrearTelefono.aspx" class="btn btn-primary">Crear teléfono</a>
    </div>

    <div class="primary-container">

        <asp:GridView ID="GvListarTelefonos" runat="server" AutoGenerateColumns="false" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="id_Telefono" HeaderText="ID" />
                <asp:BoundField DataField="marca" HeaderText="Marca" />
                <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="precio" HeaderText="Precio" />
                <asp:BoundField DataField="FechaLanzamiento" HeaderText="Lanzamiento" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="EditarTelefono.aspx?id=<%# Eval("id_Telefono") %>">Modificar</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
