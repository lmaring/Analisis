<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="resources/css/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <title>Quiz</title>
    <style type="text/css">
        .auto-style1 {
            padding: 15px;
            border-bottom: 1px solid #e5e5e5;
            font-size: large;
        }
    </style>
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
                        <li class="active"><a href="Accreditation.aspx">Acreditaciones</a></li>
                        <li><a href="UserInfo.aspx">Ajuste Cuenta</a></li>
                        <li><a href="Index.aspx">Salir</a></li>
                    </ul>
                </div>
            </div>
        </div><!--Final del navbar-->
        <br /><br />
        <div>           
            <div class="container-fluid bg-info">
                 <br />
                 <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="auto-style1">
                            <asp:Label ID="Preg" runat="server" Text="Label"><span class="label label-warning" id="qid">1</span> Titulo de la pregunta</asp:Label>
                            <!--El numero tiene que irse incrementando-->
                        </div>
                        <div class="modal-body">
                            <div class="col-xs-3 col-xs-offset-5"> 
                                <div id="loadbar" style="display: none;">
                                <div class="blockG" id="rotateG_01"></div>
                                <div class="blockG" id="rotateG_02"></div>
                                <div class="blockG" id="rotateG_03"></div>
                                <div class="blockG" id="rotateG_04"></div>
                           </div>
                        </div>
                    <div class="col-md-12 col-lg-12 col-xs-12">
                        <div class="funkyradio">
                            <div class="funkyradio-success" >
                                <asp:RadioButton ID="rb_resp1"  GroupName="GN_Respuestas" Text="Odio a ASP con todo mi ser enserio es el lenguaje mas molesto y no se si esto va a servir bien" runat="server" />
                            </div>
                            <div class="funkyradio-success">
                                <asp:RadioButton ID="rb_resp2"  GroupName="GN_Respuestas" Text="Odio a ASP con todo mi ser enserio es el lenguaje mas molesto y no se si esto va a servir bien" runat="server" />
                            </div>
                            <div class="funkyradio-success">
                                <asp:RadioButton ID="rb_resp3"  GroupName="GN_Respuestas" Text="Odio a ASP con todo mi ser enserio es el lenguaje mas molesto y no se si esto va a servir bien" runat="server" Font-Size="Medium" />
                            </div>
                            <div class="funkyradio-success">
                                <asp:RadioButton ID="rb_resp4"  GroupName="GN_Respuestas" Text="Odio a ASP con todo mi ser enserio es el lenguaje mas molesto y no se si esto va a servir bien" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                 
                <div class="modal-footer text-muted">
                    <br />
                <asp:Button ID="btn_ingreso" runat="server" CssClass="btn btn-primary" Text="Siguiente Respuesta" OnClick="btn_ingreso_Click" />
                    <span id="answer"></span>
                </div>
            </div>
        </div>
    </div>
 </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>

