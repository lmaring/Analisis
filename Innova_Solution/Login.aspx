<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    
</head>
<body>
    <div class="container well contenedor">
        <div class="row">
            <div class="col-xs-12">
                <h2>Iniciar Sesión</h2>
            </div>
        </div>
        <form runat="server" class="form-horizontal" >
            <asp:ScriptManager ID="smLogin" runat="server"></asp:ScriptManager>

            <div class="form-group">
                <asp:Label ID="UserName" runat="server" Text="User" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TxtUserName" runat="server" CssClass="form-control"  TextMode="SingleLine" CausesValidation="false"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="PassWord" runat="server" Text="PassWord" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">     
                    <asp:TextBox ID="TxtPassWord" runat="server"  CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login"  CssClass="form-control btn btn-primary" />
                <br />
                <br />
                <asp:Button ID="BtnBack" runat="server" Text="Back"  OnClick="BtnBack_Click"   CssClass="form-control btn btn-primary" />           
            </div>
    </form>

    </div>
    
</body>
</html>