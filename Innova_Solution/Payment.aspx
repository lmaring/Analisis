<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <title>Pago de premium</title>
    <script type="text/javascript">

        //$cc.validate = function (e) {

        //    //if the input is empty reset the indicators to their default classes
        //    if (e.target.value == '') {
        //        e.target.previousElementSibling.className = 'card-type';
        //        e.target.nextElementSibling.className = 'card-valid';
        //        return
        //    }

        //    //Retrieve the value of the input and remove all non-number characters
        //    var number = String(e.target.value);
        //    var cleanNumber = '';
        //    for (var i = 0; i < number.length; i++) {
        //        if (/^[0-9]+$/.test(number.charAt(i))) {
        //            cleanNumber += number.charAt(i);
        //        }
        //    }

        //    //Only parse and correct the input value if the key pressed isn't backspace.
        //    if (e.key != 'Backspace') {
        //        //Format the value to include spaces in the correct locations
        //        var formatNumber = '';
        //        for (var i = 0; i < cleanNumber.length; i++) {
        //            if (i == 3 || i == 7 || i == 11) {
        //                formatNumber = formatNumber + cleanNumber.charAt(i) + ' '
        //            } else {
        //                formatNumber += cleanNumber.charAt(i)
        //            }
        //        }
        //        e.target.value = formatNumber;
        //    }

        //    //run the Luhn algorithm on the number if it is at least equal to the shortest card length
        //    if (cleanNumber.length >= 12) {
        //        var isLuhn = luhn(cleanNumber);
        //    }

        //    function luhn(number) {
        //        var numberArray = number.split('').reverse();
        //        for (var i = 0; i < numberArray.length; i++) {
        //            if (i % 2 != 0) {
        //                numberArray[i] = numberArray[i] * 2;
        //                if (numberArray[i] > 9) {
        //                    numberArray[i] = parseInt(String(numberArray[i]).charAt(0)) + parseInt(String(numberArray[i]).charAt(1))
        //                }
        //            }
        //        }

        //        var sum = 0;
        //        for (var i = 1; i < numberArray.length; i++) {
        //            sum += parseInt(numberArray[i]);
        //        }
        //        sum = sum * 9 % 10;
        //        if (numberArray[0] == sum) {
        //            return true
        //        } else {
        //            return false
        //        }
        //    }
        //};
	
	function nombreVacio(nombre){
		if(nombre == ""){
			return true;
		}else{
			return false;
		}
	}
	
    function luhn(number) {
        var numberArray = number.split('').reverse();
        for (var i = 0; i < numberArray.length; i++) {
            if (i % 2 != 0) {
                numberArray[i] = numberArray[i] * 2;
                if (numberArray[i] > 9) {
                    numberArray[i] = parseInt(String(numberArray[i]).charAt(0)) + parseInt(String(numberArray[i]).charAt(1))
                }
            }
        }

        var sum = 0;
        for (var i = 1; i < numberArray.length; i++) {
            sum += parseInt(numberArray[i]);
        }
        sum = sum * 9 % 10;
        if (numberArray[0] == sum) {
            return true
        } else {
            return false
        }
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
        var anho = (document.getElementById("<%=ddl_anho.ClientID%>").options[document.getElementById("<%=ddl_anho.ClientID%>").selectedIndex].text);
        var mes = (document.getElementById("<%=ddl_mes.ClientID%>").options[document.getElementById("<%=ddl_mes.ClientID%>").selectedIndex].text);

        if (nombreVacio(nombre)) {
            alert("Debe llenar el campo del nombre");
        } else if (luhn(tarjeta) || tarjeta == "") {
            alert("Número invalido para el campo de tarjeta");
        } else if (codigoSeguridad(cvv)) {
            alert("Número de seguridad invalido");
        } else if (mes == "Mes"){
            aler("Ingrese un mes");
        } else if (anho == "Año"){
            alert("Ingrese un año")
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
                            <asp:ListItem Selected="True" Value="" Text="Mes"></asp:ListItem>
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
                            <asp:ListItem Selected="True" Value="" Text="Año"></asp:ListItem>
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
                            <asp:Button ID="btn_cancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" OnClick="btn_cancelar_Click" />
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                            <asp:Button ID="btn_pagar" CssClass="btn btn-primary" runat="server" Text="Pagar" OnClientClick="revisarValidezCampos();"  />
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