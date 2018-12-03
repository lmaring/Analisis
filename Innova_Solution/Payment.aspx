﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <title>Pago de premium</title>
    <script type="text/javascript">
	//function getCreditCardType(accountNumber){
	//	//start without knowing the credit card type
	//	var result = "unkown";
		
	//	//document.getElementById("lbl_Error").innerHTML = "getCreditCard";
		
	//	//first check for MasterCard
	//	if(/^5[1-5]/.test(accountNumber)){
	//		result = "mastercard";
	//	}else if(/^4/.test(accountNumber)){
	//		result = "visa";
	//	}else if(/^3[47]/.test(accountNumber)){
	//		result = "amex";
	//	}else if(/^3(?:0[0-5]|[68][0-9])[0-9]{11}$]/.test(accountNumber)){
	//		result = "dinners";
	//	}else if(/^6(?:011|5[0-9]{2})[0-9]{12}$/.test(accountNumber)){
	//		result = "discover";
	//	}else if(/^(?:2131|1800|35\d{3})\d{11}$$/.test(accountNumber)){
	//		result = "JCB";
	//	}

	//	return result;
	//}

	//function handleEvent(event){
	//	var imagen = document.getElementById("img_mutable");
	//	var value = event.target.value,
	//		type = getCreditCardType(value);
			
	//	//document.getElementById("lbl_Error").innerHTML = "handleEvent";
	//	switch(type){
	//		case "mastercard":
	//			imagen.src = "https://s3.envato.com/files/235210287/mastercard-logo-80x80.png";
	//		break;
	//		case "visa":
	//			imagen.src = "https://uploads1.craft.co/uploads/company/logo/20xx/2015/normal_pysTROTb.jpeg";
	//		break;
	//		case "amex":
	//			imagen.src = "https://uploads3.craft.co/uploads/company/logo/166xx/16640/normal_I0lD_2RX.png";
	//		break;
	//		case "dinners":
	//			imagen.src = "https://caisse-tpe.com/658-cart_default/diners-cards-compris-installation.jpg";
	//		break;
	//		case "discover":
	//			imagen.src = "https://ccbank.us/wp-content/uploads/Discover-bank-logo.png";
	//		break;
	//		case "JCB":
	//			imagen.src = "https://png.icons8.com/ios/2x/jcb.png";
	//		break;
	//		default:
	//			document.getElementById("lbl_Error").innerHTML = "Tarjeta no es valida";
	//	}
	//}
	
	function nombreVacio(nombre){
		if(nombre == ""){
			return true;
		}else{
			return false;
		}
	}
	
	function luhnFormula(tarjeta){
        if (/[^0-9-\s]+/.test(value)) return false;

        // The Luhn Algorithm. It's so pretty.
        var nCheck = 0, nDigit = 0, bEven = false;
        value = value.replace(/\D/g, "");

        for (var n = value.length - 1; n >= 0; n--) {
            var cDigit = value.charAt(n),
                nDigit = parseInt(cDigit, 10);

            if (bEven) {
                if ((nDigit *= 2) > 9) nDigit -= 9;
            }

            nCheck += nDigit;
            bEven = !bEven;
        }

        return (nCheck % 10) == 0;
    }

    function codigoSeguridad(ccv) {
        var correcto = true;
        var regNumeros = /^d+$/;

        if (ccv.length != 3 || !ccv.regNumeros || ccv == null) 
            correcto = false;

        return correcto;
    }
	
    function revisarValidezCampos(){
        var nombre = document.getElementById('<%=txt_nombre.ClientID%>').value;
        var tarjeta = document.getElementById('<%=txt_numero.ClientID%>').value;
        var ccv = document.getElementById('<%=txt_ccv.ClientID%>').value;


        if (nombreVacio(nombre)) {
            alert("Debe llenar el campo del nombre");
        } else if (luhnFormula(tarjeta) || tarjeta == "") {
            alert("Número invalido para el campo de tarjeta");
        } else if (codigoSeguridad(cvv)) {
            alert("Número de seguridad invalido");
        } else {
            alert("El pago se ha hecho efectivamente");
        }
	}

</script>
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
    <div class="panel-pago" >
        <div class="panel-heading" >
            <div class="row ">
                <h2 align="center" font-weight="bold">Pago</h2>
                <br />
                    <div class="col-md-4">
                        <asp:TextBox ID="txt_numero" class="form-control" runat="server" placeholder="Número de la tarjeta"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:TextBox ID="txt_nombre" class="form-control" runat="server" placeholder="Nombre en la tarjeta"></asp:TextBox>
                    </div>
            </div>
                <br />
                <div class="row ">
                    <div class="col-lg-5 col-md-5 col-sm-3 col-xs-3">
                        <span class="help-block text-muted small-font" >Mes de expiración</span>
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
                    <div class="col-lg-5 col-md-5 col-sm-3 col-xs-3">
                        <span class="help-block text-muted small-font" >Año de expiración</span>
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
                </div>
                <br />
                <div class="auto-style1">
                    <asp:TextBox ID="txt_ccv" class="form-control" runat="server" placeholder="CCV"></asp:TextBox>
                </div>
                <br /><br /><br />
                    <asp:Label ID="lbl_Error" runat="server" Text="" ForeColor="Red"></asp:Label>
                <div class="row ">
                    <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                        <asp:Button ID="btn_cancelar" CssClass="btn btn-danger"  runat="server" Text="Cancelar" OnClick="btn_cancelar_Click" />
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                        <asp:Button ID="btn_pagar" CssClass="btn btn-primary"  runat="server" Text="Pagar" OnClientClick="revisarValidezCampos();"  />
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