<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="resources/css/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <title>Quiz</title>
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
                        <li><a href="AjusteUsuario.aspx">Ajuste Cuenta</a></li>
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
                        <div class="modal-header">
                            <h3><span class="label label-warning" id="qid">1</span> Titulo de la pregunta</h3>
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
                        <asp:Image ID="img" runat="server" ImageUrl="https://4.imimg.com/data4/NL/KX/MY-17786222/networking-solution-500x500.jpg" Height="500" Width="500" />
                    <div class="quiz" id="quiz" data-toggle="buttons">
                        <asp:Button ID="btn_resp1" runat="server" class="btn btn-lg btn-primary btn-block" Text="1" OnClick="btn_resp1_Click"> </asp:Button>
                        <asp:Button ID="btn_resp2" runat="server" class="btn btn-lg btn-primary btn-block" Text="2"> </asp:Button>
                        <asp:Button ID="btn_resp3" runat="server" class="btn btn-lg btn-primary btn-block" Text="3"> </asp:Button>
                        <asp:Button ID="btn_resp4" runat="server" class="btn btn-lg btn-primary btn-block" Text="4"> </asp:Button>
                    </div>
                </div>
                <div class="modal-footer text-muted">
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

