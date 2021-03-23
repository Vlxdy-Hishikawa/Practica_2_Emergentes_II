<%-- 
    Document   : Index
    Created on : 21-mar-2021, 21:09:08
    Author     : Vlxdy Hishikawa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="author" content="VLADIMIR HUANCA">
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="Logo.png">
        <title>PRACTICA Nº 2</title>
    </head>
    <style>
        body {
  		background-image: linear-gradient(
     		rgba(0, 0, 0, 0.6),
     		rgba(0, 0, 0, 0.6)
   			), url("Fondo.png");
  			background-repeat: no-repeat;
 			background-attachment: fixed;
  			background-size: 100% 100%;
  			padding: 20px;
  			background-color:#dbffcc;
            }
        #heading { color: #fff; }
        a,h1,h2,h4,li{
		color: white;
                }
        .glow {
            font-size: 30px;
            color: #fff;
            text-align: center;
            -webkit-animation: glow 1s ease-in-out infinite alternate;
            -moz-animation: glow 1s ease-in-out infinite alternate;
            animation: glow 1s ease-in-out infinite alternate;
        }

        @-webkit-keyframes glow {
        from {
            text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
        }
  
        to {
            text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
        }
        }
        .flip-card {
            background-color: transparent;
            width: 200px;
            height: 200px;
            perspective: 1000px;
        }

        .flip-card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            text-align: center;
            transition: transform 0.6s;
            transform-style: preserve-3d;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        }

        .flip-card:hover .flip-card-inner {
            transform: rotateY(180deg);
        }

        .flip-card-front, .flip-card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
        }

        .flip-card-front {
            background-color: #bbb;
            color: black;
        }

        .flip-card-back {
            background-color: #000000;
            color: white;
            transform: rotateY(180deg);
        }
    </style>
    <link rel="StyleSheet" href="mystyle.css" type=text/css>
        <body>
            <header>
                <h1 align="center">PRACTICA N°2 EMERGENTES II</h1>
            </header>
                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Icono.jpg" alt="Avatar" style="width:200px;height:200px;">
                        </div>
                        <div class="flip-card-back">
                            <br>
                            <h1 class="glow">VLADIMIR HUANCA</h1> 
                            <p>PRACTICA 2</p> 
                            <p>7mo SEMESTRE</p> 
                        </div>
                    </div>
                </div>
            <ol><br><br>
                <li><b><a href="Form_Inscripcion_Curso.jsp">  INSCRIPCION DE CURSO </a></b></li><br>
                <li><b><a href="Form_Registro_Usuario.jsp">  REGISTRO DE USUARIOS </a></b></li><br>
                <li><b><a href="Form_Registro_Productos.jsp">  REGISTRO DE PRODUCTOS </a></b></li><br>
                <li><b><a href="Form_Registro_Libros.jsp">  REGISTRO DE LIBROS </a></b></li><br>
            </ol>
        <footer>
	<p>
            <h3 id="heading" align="center">DEVELOPED &#x1F497; by <a style="color:yellow;" ><strong>VLADIMIR HUANCA</strong></a></h3>
        </p>
        </footer>
        </body>
</html>

