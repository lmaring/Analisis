<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddQuestion.aspx.cs" Inherits="AddQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <title>Agregar Preguntas</title>
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
                        <li><a href="MenuPrincipal.aspx">Menu Principal</a></li>
                        <li class="active" ><a href="Acreditaciones.aspx">Acreditaciones</a></li>
                        <li><a href="UserInfo.aspx">Ajuste Cuenta</a></li>
                        <li><a href="Index.aspx">Salir</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container-fluid bg-info">
            <br /><br /><br />
            <asp:ImageButton ID="imgBack" runat="server" ImageUrl="~/Imagenes/backarrow.png" Height="50px" Width="50px" OnClick="imgBack_Click" />
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3><span class="label label-warning" id="qid">Enunciado:</span></h3>
                        <asp:TextBox ID="txtEnunciado" CssClass="txtEnunciado" runat="server" TextMode="MultiLine" BorderWidth="1px"></asp:TextBox>
                        <br /><br />
                        <asp:FileUpload ID="FU_imagenPregunta" accept=".jpg" runat="server" CssClass="form-control" Visible="True" />
                        <br />
                        <asp:Button ID="btnGuardarImagen" runat="server" Text="Buscar Imagen" CssClass="btn btn-primary" Visible="True" />
                        <asp:Image ID="img_Preview" runat="server" />
                        </div>
                    <div>
                        <asp:Label ID="lbl_tipo" runat="server" Text="Categoría"></asp:Label>
                        <asp:TextBox ID="txt_categoria" runat="server"></asp:TextBox>
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
                    <div class="quiz" id="quiz">
                        <br />
                        <asp:RadioButton ID="rd_btn1" Text="" runat="server" GroupName="GN_Respuestas" />
                        <asp:TextBox ID="txt_resp1" Text="" runat="server" TextMode="MultiLine" CssClass="txtAgregarPregunta"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rd_btn2" Text="" runat="server" GroupName="GN_Respuestas" />
                        <asp:TextBox ID="txt_resp2" Text="" runat="server" TextMode="MultiLine" CssClass="txtAgregarPregunta"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rd_btn3" Text="" runat="server" GroupName="GN_Respuestas" />
                        <asp:TextBox ID="txt_resp3" Text="" runat="server" TextMode="MultiLine" CssClass="txtAgregarPregunta"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="rd_btn4" Text="" runat="server" GroupName="GN_Respuestas" />
                        <asp:TextBox ID="txt_resp4" Text="" runat="server" TextMode="MultiLine" CssClass="txtAgregarPregunta"></asp:TextBox>
                        <br />
                    </div>
                    <br />
                    <asp:Button ID="btn_guardarPregunta" runat="server" CssClass="btn btn-success" Text="Guardar pregunta" />
                </div>
                <div class="modal-footer text-muted">
                    <span id="answer"></span>
                </div>
            </div>
        </div>
    </div>

    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflatxe.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
