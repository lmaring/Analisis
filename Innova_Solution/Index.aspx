﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!-- Bootstrap CSS -->
   <%-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />--%>
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <title>Menu Principal</title>
    <style type="text/css">
        .auto-style1 {
            float: left;
            height: 50px;
            padding: 15px 15px;
            font-size: 18px;
            line-height: 20px;
            width: 27px;
        }
        .auto-style2 {
            width: 1170px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
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
                    <a class="auto-style1" href="#"><span><img alt="Logo" src="Imagenes/innovaLogo.jpg" height="30 width="30" /></span> </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Login.aspx">Login</a></li>
                        <li><a href="CreateUser.aspx">Register</a></li>
                    </ul>
                </div>
            </div>
        </div>

    <div class="auto-style2">
        <br />
        <br />
        <br />
        <h1 class="text-left">Quienes Somos?</h1>
           <p class="text-left"> Innova Solutions se encarga en capacitar personas en procesos de capacitacion como lo
            que seria institutos y tienen convenios con varias empresas para certificar como lo es en 
            cisco, Adobe, PMP, ITIL, COBIT, SCRUM, SIX SIGMA, Manipulacion de Alimento y pruebas de colegios 
            profesionales. Cuando se termina el curso cierto estudiantes decian que le hacia falta un practica del
            curso una vez terminado entonces la idea es crear un apliccaion departe una particio activa donde se puedan
            logear y realizar cierto cuestionaros con preguntas aleatorias en diferentes areas y el usuario tiene la 
            capacidad selecionarla sobre una base de datos de preguntas pero solo se muestran 10 por cuestionaro y son
            respuestas de si o no, tambien tiene la capacidad de respuesta multiple. tener la capacidad preguntas, nota 
            total, tiempo maximo de contestar ciertas preguntas. maximo de nota para aprovar el examen y que tipo de cuestionario es.</p>
        <tr style="width:1100px; height:300px">
            <td colspan="3">
                <hr color="black" height: "10px">
                <img src="imagenes/banner.jpg" class="auto-style5" width="660Px" />
            </td>
        </tr>
    </div>

    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
