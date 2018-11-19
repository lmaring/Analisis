<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
    &nbsp;<div class="text-center">
    <div class="container well contenedor">
        <div class="row">
            <div class="col-xs-12">
                <h2>Crear Usuario</h2>
            </div>
        </div>
        <form runat="server" class="form-horizontal">
            &nbsp;<asp:ScriptManager ID="smLogin" runat="server"></asp:ScriptManager>

            <div class="form-group">
                <asp:Label ID="UserName" runat="server" Text="User" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TxtUserName" runat="server" CssClass="form-control" TextMode="SingleLine" CausesValidation="false"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="PassWord" runat="server" Text="PassWord " CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TxtPassWord" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Email" runat="server" Text="Email" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox type="email" ID="TxtMail" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Telefono" runat="server" Text="Telefono" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextTel" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Profesion" runat="server" Text="Profesion" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextProf" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Vivienda" runat="server" Text="Vivienda" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextViv" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Button ID="BtnCrear" runat="server" OnClick="Button1_Click" Text="Crear" CssClass="form-control btn btn-primary" />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="BtnBack_Click" Text="Back" CssClass="form-control btn btn-primary" />
            </div>

        </form>

    </div>
        <img src="imagenes/banner.jpg" class="auto-style5" width="660Px" />
    </div>
</body>
</html>
