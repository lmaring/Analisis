<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <title>Pago de premium</title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            text-align: left;
            padding-left: 15px;
            padding-right: 15px;
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
                        <li><a href="Accreditation.aspx">Acreditaciones</a></li>
                        <li class="active"><a href="UserInfo.aspx">Ajuste Cuenta</a></li>
                        <li><a href="Index.aspx">Salir</a></li>
                    </ul>
                </div>
            </div>
        </div> <!--Se termina el navbar-->
        <br /><br />
        <div class="container-fluid bg-info" >
            <br />
<div class="panel panel-default" >
    <div class="panel-heading" >
        <div class="row "  >
            <h2 align="center">Pago</h2>
            <br />
            <div class="col-md-3">
                <asp:TextBox ID="txt_numero" class="form-control" runat="server" placeholder="Número de la tarjeta"></asp:TextBox>
            </div>
            <div class="col-md-3">
            <asp:TextBox ID="txt_nombre" class="form-control" runat="server" placeholder="Name On The Card"></asp:TextBox>
        </div>
        </div>
        <br />
    <div class="row ">
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
            <span class="help-block text-muted small-font" > Expiry Month</span>
            <asp:DropDownList ID="ddl_mes" runat="server">
                    <asp:ListItem Selected="True" Value=""> Mes </asp:ListItem>
                    <asp:ListItem Value="1"> Ene </asp:ListItem>
                    <asp:ListItem Value="2"> Feb </asp:ListItem>
                    <asp:ListItem Value="3"> Mar </asp:ListItem>
                    <asp:ListItem Value="4"> Abr </asp:ListItem>
                    <asp:ListItem Value="5"> May </asp:ListItem>
                    <asp:ListItem Value="6"> Jun </asp:ListItem>
                    <asp:ListItem Value="7"> Jul </asp:ListItem>
                    <asp:ListItem Value="8"> Aug </asp:ListItem>
                    <asp:ListItem Value="9"> Sep </asp:ListItem>
                    <asp:ListItem Value="10"> Oct </asp:ListItem>
                    <asp:ListItem Value="11"> Nov </asp:ListItem>
                    <asp:ListItem Value="12"> Dec </asp:ListItem>
                </asp:DropDownList>
        </div>
    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
        <span class="help-block text-muted small-font" > Expiry Year</span>
        <asp:DropDownList ID="ddl_anho" runat="server">
            <asp:ListItem Selected="True" Value=""> Año </asp:ListItem>
            <asp:ListItem Value="18"> 18 </asp:ListItem>
            <asp:ListItem Value="19"> 19 </asp:ListItem>
            <asp:ListItem Value="20"> 20 </asp:ListItem>
            <asp:ListItem Value="21"> 21 </asp:ListItem>
            <asp:ListItem Value="22"> 22 </asp:ListItem>
            <asp:ListItem Value="23"> 23 </asp:ListItem>
            <asp:ListItem Value="24"> 24 </asp:ListItem>
            <asp:ListItem Value="25"> 25 </asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="auto-style1">
        <asp:TextBox ID="txt_ccv" class="form-control" runat="server" placeholder="CCV"></asp:TextBox>
    </div>
  </div>
        <br />
    <div class="row ">
        <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
            <asp:Button ID="btn_cancelar" CssClass="btn btn-danger"  runat="server" Text="Cancelar" OnClick="btn_cancelar_Click" />
        </div>
    <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
        <asp:Button ID="btn_pagar" CssClass="btn btn-primary"  runat="server" Text="Pagar" OnClick="btn_pagar_Click" />
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
