<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resultado2.aspx.cs" Inherits="Quiz02.Pages.Resultado2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Proceso finalizado
    </h2>
    <div class="alert-success">
        <p>Ha modificado correctamente un nuevo teléfono en la base de datos</p>
    </div>
    <div>
        <a href="ListaTelefonos.aspx" class="btn btn-primary">Regresar</a>
    </div>
</asp:Content>
