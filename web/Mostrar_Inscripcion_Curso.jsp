<%-- 
    Document   : Mostrar_Inscripcion_Curso
    Created on : 21-mar-2021, 22:19:42
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
        b{
	   color: yellow;
        }
        table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        }
        th {
          border: 1px solid white;
          background-color:black;
          color: white;
          text-align: left;
          padding: 8px;
        }

        td {
          border: 1px solid black;
          text-align: left;
          padding: 8px;
        }

        tr:nth-child(odd) {
          background-color: #dddddd;
        }
        tr:nth-child(even) {
          background-color: white;
          color:black;
        }
    </style>
    <body>
        <header>
                <h1 align="center"> LISTA INSCRIPCION DE CURSO </h1>
                <br><br>
        </header>
        <a href="Form_Inscripcion_Curso.jsp"><b>NUEVO</b></a><br><br>
        <table>
            <tr>
                <th>NOMBRE</th>
                <th>APELLIDOS</th>
                <th>CURSO</th>
            </tr>
            <%    if (lista != null) {
           for (Inscripcion_Curso item : lista) {
            %>
            <tr>
                <td><%=item.getNombre()%></td>
                <td><%=item.getApellidos()%></td>
                <td><%=item.getCurso()%></td>
            </tr>
            <%     }
                }
            %>
        </table>
    <footer>
        <br><br>
        <a href="Index.jsp">VOVER AL INICIO</a><br><br>
	<p>
            <h3 id="heading" align="center">DEVELOPED &#x1F497; by <a style="color:yellow;" ><strong>VLADIMIR HUANCA</strong></a></h3>
        </p>
    </footer>
    </body>
</html>