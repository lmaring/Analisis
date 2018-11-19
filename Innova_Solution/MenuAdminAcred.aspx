<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuAdminAcred.aspx.cs" Inherits="MenuAdminAcred" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Acreditaciones Admin</title>
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
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
                        <li><a href="MenuAdmin.aspx">Menu Administrador</a></li>
                        <li class="active"><a href="AcredAdmin.aspx">Acreditaciones</a></li>
                        <li><a href="AjusteUsuario.aspx">Cuenta Nueva</a></li>
                    </ul>
                </div>
            </div>
        </div>

         <div class="container">
        <br />
        <br />
        <h1>Acreditaciones</h1>
        <table class="table">
            <thead>
              <tr>
                <th>#</th>
                <th>Nombre:</th>
                <th>      </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>SCRUM</td>
                <td><asp:Button ID="btn_editSCRUM" runat="server" Text="Editar preguntas" OnClick="btn_quizScrum_Click" /></td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>ITIL</td>
                <td><asp:Button ID="btn_editITIL" runat="server" Text="Editar preguntas" OnClick="btn_matITIL_Click" /></td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>CCNA</td>
                <td><asp:Button ID="btn_editCCNA" runat="server" Text="Editar preguntas" OnClick="Button1_Click" /></td>
              </tr>
            </tbody>
        </table>
    </div>


    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
