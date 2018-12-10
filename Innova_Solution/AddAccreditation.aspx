 b <%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddAccreditation.aspx.cs" Inherits="AddAccreditation" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <title></title>
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
                        <li class="active"><a href="AddAccreditation.aspx">Acreditaciones</a></li>
                        <li><a href="AdminInfo.aspx">Ajuste Cuenta</a></li>
                        <li><a href="Index.aspx">Salir</a></li>
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
                   <th>     
                       <asp:Button style="font-family: Arial; font-weight: lighter; border-radius: 15px;" ID="Button1" runat="server" Text="Agregar" OnClick="Add_Exam" />
                       <asp:Button style="font-family: Arial; font-weight: lighter; margin-left: 7px; border-radius: 15px;" ID="Button2" runat="server" Text="Confirmar" OnClick="Save_Changes" />
                       <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                   </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>PMP</td>
                <td>-</td>
                <td><asp:Button ID="btn_PMP" runat="server" Text="Crear" OnClick="btn_quizPMP_Click" /></td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>ITIL</td>
                <td>-</td>
                <td><asp:Button ID="btn_ITIL" runat="server" Text="Crear" OnClick="btn_ITIL_Click" /></td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>CCNA</td>
                <td>-</td>
                <td><asp:Button ID="btn_CCNA" runat="server" Text="Crear" OnClick="btn_CCNA_Click" /></td>
              </tr>
                <tr id="TrBtn1" runat="server" Visible="false">
                <th scope="row">4</th>
                <td> <asp:TextBox ID="TextBoxScrum" runat="server"></asp:TextBox></td>
                <td>-</td>
                <td><asp:Button ID="btn_SCRUM" runat="server" Text="Crear" OnClick="btn_SCRUM_Click"/></td>
              </tr>
                <tr id="TrBtn2" runat="server" Visible="false">
                <th scope="row">5</th>
                <td> <asp:TextBox ID="TextBoxExamen2" runat="server"></asp:TextBox></td>
                <td>-</td>
                <td><asp:Button ID="btn_examen" runat="server" Text="Crear" OnClick="btn_Examen_Click"/></td>
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
