
 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
      
    <title>Ajuste de Usuario</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class ="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><span><img alt="Logo" src="Imagenes/innovaLogo.jpg" height="30" width="30" /></span> </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="HomeUser.aspx">Menu Principal</a></li>
                        <li><a href="Accreditation.aspx">Acreditaciones</a></li>
                        <li class="active"><a href="UserInfo.aspx">Ajuste Cuenta</a></li>
                        <li><a href="Grades.aspx">Record de Notas</a></li>
                        <li><a href="Index.aspx">Salir</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div>
            <br />
            <br />
            <div class ="container"> 
                <h1>Ajuste de Usuario</h1> 
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>Usuario:</td>
                         <td><asp:Label ID="lbl_User" runat="server" Text="Usuario Name"></asp:Label></td>
                        </tr>
                        <tr>
                        <td>Contraseña:</td>
                        <td><asp:Label ID="lbl_Pass" runat="server" Text="******"></asp:Label></td>
                        </tr>
                        <tr>
                        <td>Email</td>
                        <td><asp:Label ID="lbl_correo" runat="server" Text="info@support.com"></asp:Label></td>
                        </tr>
                        <tr>
                        <td>Profesion</td>
                        <td><asp:Label ID="lbl_profesion" runat="server" Text="Pastor Evangelico"></asp:Label></td>                        
                        </tr>
                        <tr>
                        <td>Vivienda</td>
                        <td><asp:Label ID="lblVivienda" runat="server" Text="Moravia Miedo"></asp:Label></td>
                        </tr>
                        <tr>
                        <td>Phone Number</td>
                            <td><asp:Label ID="lbl_telefono" runat="server" Text="8888-8888"></asp:Label></td>
                        </tr>
                        <tr>
                        <td>Tipo de Cuenta</td>
                        <td><asp:Label ID="lbl_TipoCuenta" runat="server" Text="-"></asp:Label></td>
                        </tr>
                    </tbody>
                  </table>
                <asp:Button ID="btn_Payment" CssClass="btn btn-primary" runat="server" Text="Premium" OnClick="btn_Payment_Click" />
                  <a href="#" class="btn btn-primary">Guardar Cambios</a>
                </div>
        </div>
        
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
