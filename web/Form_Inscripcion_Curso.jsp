<%-- 
    Document   : Form_Inscripcion_Curso
    Created on : 21-mar-2021, 21:09:08
    Author     : Vlxdy Hishikawa
--%>

<%@page import="com.Vlxdy.Inscripcion_Curso"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("listacurso") == null) {
        ArrayList<Inscripcion_Curso> listaux = new ArrayList<Inscripcion_Curso>();
        session.setAttribute("listacurso", listaux);
    }
    ArrayList<Inscripcion_Curso> lista = (ArrayList<Inscripcion_Curso>) session.getAttribute("listacurso");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="author" content="VLADIMIR HUANCA">
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="Logo.png">
        <title> FORMULARIO 1 </title>
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
        SELECT{ 
                width: 200px;
		padding: 3px 10px;
		border:1px solid #f6f6f6;
		border-radius: 3px;
		background-color:  #f6f6f6;
		margin:8px 0;
		display: inline-block;
            }
    </style>
    <body>
        <header>
                <h1 align="center"> INSCRIPCION EN CURSO </h1>
                <br><br>
        </header>
        <form action="Procesa_Inscripcion_Curso" method="POST">
            <h3 align="center">INTRODUZCA SUS DATOS</h3><br>
            <b>NOMBRE:</b>
                <input type="Text" name="Nombre" required/>
            <br>
            <b>APELLIDOS:</b>
		<input type="Text" name="Apellidos" required/>
            <br>
            <b>CURSO:</b>
            <select name="Curso" min='1' required>
                <option value='0' disabled selected >Elija una opcion</option>
		<option value="PRIMERO">PRIMERO</option>
		<option value="SEGUNDO">SEGUNDO</option>
		<option value="TERCERO">TERCERO</option>
                <option value="CUARTO">CUARTO</option>
                <option value="QUINTO">QUINTO</option>
                <option value="SEXTO">SEXTO</option>
            </select>
            <br><br><br><br>
            Desea Borrar La Lista Existente:
            <input type="radio" name="Borrar" value="SI" checked="" required>SI
            <input type="radio" name="Borrar" value="NO" checked="" required>NO
            <br><br>
            <input type="submit" value="ENVIAR">
	</form>
    <footer>
	<p>
            <h3 id="heading" align="center">DEVELOPED &#x1F497; by <a style="color:yellow;" ><strong>VLADIMIR HUANCA</strong></a></h3>
        </p>
    </footer>
    </body>
</html>