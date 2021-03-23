<%-- 
    Document   : Form_Registro_Usuario
    Created on : 21-mar-2021, 21:09:08
    Author     : Vlxdy Hishikawa
--%>

<%@page import="com.Vlxdy.Registro_Usuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("listausu") == null) {
        ArrayList<Registro_Usuarios> listaux = new ArrayList<Registro_Usuarios>();
        session.setAttribute("listausu", listaux);
    }
    ArrayList<Registro_Usuarios> lista = (ArrayList<Registro_Usuarios>) session.getAttribute("listausu");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="author" content="VLADIMIR HUANCA">
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="Logo.png">
        <title> FORMULARIO 2 </title>
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
        form{
		width: 480px;
		padding: 16px;
		border-radius: 0px;
		margin: auto;
		background-color: #ccf;
	}
	form input[type="number"]{
		width: 200px;
		padding: 3px 10px;
		border:1px solid #f6f6f6;
		border-radius: 3px;
		background-color:#9f9;
		margin:8px 0;
		display: inline-block;
	}
        form input[type="email"]{
		width: 200px;
		padding: 3px 10px;
		border:1px solid #f6f6f6;
		border-radius: 3px;
		background-color:#9f9;
		margin:8px 0;
		display: inline-block;
	}
        form input[type="password"]{
		width: 200px;
		padding: 3px 10px;
		border:1px solid #f6f6f6;
		border-radius: 3px;
		background-color:#9f9;
		margin:8px 0;
		display: inline-block;
	}
        form input[type="text"]{
		width: 200px;
		padding: 3px 10px;
		border:1px solid #f6f6f6;
		border-radius: 3px;
		background-color:#9f9;
		margin:8px 0;
		display: inline-block;
	}
	form input[type="submit"]{
		width: 100%;
		padding: 8px 16px;
		margin-top: 32px;
		border:1px solid #1e3300;
		border-radius: 5px;
		display: block;
		color: #fff;
		background-color:#1e3300;
	}
	form input[type="submit"]:hover{
		cursor:pointer;
	}
        SELECT{ font-size: 16px; color: white; background-color:black;}
    </style>
    <body>
        <header>
                <h1 align="center"> REGISTRO DE USUARIOS </h1>
                <br><br>
        </header>
        <form action="Procesa_Registro_Usuarios" method="POST">
            <h3 align="center">INTRODUZCA SUS DATOS</h3><br>
            <b>NOMBRE:</b>
                <input type="Text" name="Nombre" required/>
            <br>
            <b>APELLIDOS:</b>
		<input type="Text" name="Apellidos" required/>
            <br>
            <b>CORREO ELECTRONICO:</b>
		<input type="email" name="Correo" required/>
            <br>
            <b>CONTRASEÑA:</b>
            <input type="password" name="Password" required/>
            <br><br><br><br>
            Desea Borrar La Lista Existente:
            <input type="radio" name="Borrar" value="SI" checked="" required>SI
            <input type="radio" name="Borrar" value="NO" checked="" required>NO
            <br><br>
            <input type="submit" value="ENVIAR">
	</form>
        <footer>
        <br><br>
	<p>
            <h3 id="heading" align="center">DEVELOPED &#x1F497; by <a style="color:yellow;" ><strong>VLADIMIR HUANCA</strong></a></h3>
        </p>
    </footer>
    </body>
</html>