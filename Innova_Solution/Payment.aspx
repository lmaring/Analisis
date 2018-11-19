<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <title>Pago de premium</title>
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
        </div>
        <br /><br /><br />
        <fieldset>
            <h2 align="center">Payment</h2>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="card-holder-name">Name on Card</label>
        <div class="col-sm-9">
            <asp:TextBox ID="txt_nombre" runat="server"></asp:TextBox>
        </div>
          <br />
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="card-number">Card Number</label>
        <div class="col-sm-9">
            <asp:TextBox ID="txt_numTarjeta" runat="server"></asp:TextBox>
        </div>
          <br />
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="expiry-month">Expiration Date</label>
        <div class="col-sm-9">
          <div class="row">
            <div class="col-xs-3">
                <asp:DropDownList ID="ddl_mes" runat="server">
                    <asp:ListItem Selected="True" Value=""> Month </asp:ListItem>
                    <asp:ListItem Value="1"> Jan </asp:ListItem>
                    <asp:ListItem Value="2"> Feb </asp:ListItem>
                    <asp:ListItem Value="3"> Mar </asp:ListItem>
                    <asp:ListItem Value="4"> Apr </asp:ListItem>
                    <asp:ListItem Value="5"> May </asp:ListItem>
                    <asp:ListItem Value="6"> June </asp:ListItem>
                    <asp:ListItem Value="7"> July </asp:ListItem>
                    <asp:ListItem Value="8"> Aug </asp:ListItem>
                    <asp:ListItem Value="9"> Sep </asp:ListItem>
                    <asp:ListItem Value="10"> Oct </asp:ListItem>
                    <asp:ListItem Value="11"> Nov </asp:ListItem>
                    <asp:ListItem Value="12"> Dec </asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-xs-3">
                <asp:DropDownList ID="ddl_anho" runat="server">
                    <asp:ListItem Selected="True" Value=""> Year </asp:ListItem>
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
          </div>
        </div>
      </div>
      <br /><br />
      <div class="form-group">
        <label class="col-sm-3 col-md-3 col-lg-3 control-label" >Card CVV</label>
        <div class="col-sm-3 col-md-6 col-lg-6">
            <asp:TextBox ID="txt_ccv" runat="server"></asp:TextBox>
        </div>
      </div>
      <br /><br />
      <div class="form-group">
        <div class="col-sm-offset-3 col-sm-12 col-md-12">
            <asp:Button ID="btn_confirmarPago" CssClass="btn btn-primary"  runat="server" Text="Realizar Pago" />
        </div>
      </div>
                    <asp:ImageButton ID="imgBack" runat="server" ImageUrl="~/Imagenes/backarrow.png" Height="50px" Width="50px" OnClick="imgBack_Click" />
    </fieldset>
    </form>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>
