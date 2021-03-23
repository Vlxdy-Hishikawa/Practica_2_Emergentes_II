<%-- 
    Document   : Form_Registro_Libros
    Created on : 21-mar-2021, 21:09:08
    Author     : Vlxdy Hishikawa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.Vlxdy.Registro_Libros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("Lista_de_Libros") == null) {
        ArrayList<Registro_Libros> listaux = new ArrayList<Registro_Libros>();
        session.setAttribute("Lista_de_Libros", listaux);
    }
    ArrayList<Registro_Libros> lista = (ArrayList<Registro_Libros>) session.getAttribute("Lista_de_Libros");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="author" content="VLADIMIR HUANCA">
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="Logo.png">
        <title> FORMULARIO 4 </title>
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
        textarea{
		width: 100%;
		height: 100px;
		border:1px solid #f6f6f6;
		border-radius: 3px;
		background-color: #f99;
		margin: 8px 0;
		resize: none;
		display: block;
	}
        SELECT{ font-size: 16px; color: white; background-color:black;}
    </style>
    <body>
        <header>
                <h1 align="center"> REGISTRO DE LIBROS </h1>
                <br><br>
        </header>
        <form action="Procesa_Registro_Libros" method="POST">
            <h3 align="center">INTRODUZCA LOS DATOS DEL LIBRO </h3><br>
            <b>TITULO:</b>
                <input type="Text" name="Titulo" required/>
            <br>
            <b>AUTOR:</b>
		<input type="Text" name="Autor" required/>
            <br>
            <b>RESUMEN:</b>
                <textarea type="Text" name="Resumen" placeholder="describe brevemente en menos de 300 carácteres" maxlength="300" required></textarea>
            <br>
            <b>MEDIO:</b>
            <input type="radio" name="Medio" value="FISICO" checked="" required>FÍSICO 
            <input type="radio" name="Medio" value="MAGNETICO" checked="" required>MAGNETICO
            <br>
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