<%-- 
    Document   : Mostrar_Registro_Productos
    Created on : 21-mar-2021, 21:09:08
    Author     : Vlxdy Hishikawa
--%>
<%@page import="com.Vlxdy.Registro_Productos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("listapro") == null) {
        ArrayList<Registro_Productos> listaux = new ArrayList<Registro_Productos>();
        session.setAttribute("listapro", listaux);
    }
    ArrayList<Registro_Productos> lista = (ArrayList<Registro_Productos>) session.getAttribute("listapro");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="author" content="VLADIMIR HUANCA">
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="Logo.png">
        <title> FORMULARIO 3 </title>
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
                <h1 align="center"> LISTA DE PRODUCTOS </h1>
                <br><br>
        </header>
        <a href="Form_Registro_Productos.jsp"><b>NUEVO</b></a><br><br>
        <table>
            <tr>
                <th>Producto</th>
                <th>Categoria</th>
                <th>Existencia</th>
                <th>Precio</th>
            </tr>
            <%                
                if (lista != null) {
                    for (Registro_Productos item : lista) {
            %>
            <tr>
                <td><%=item.getProducto()%></td>
                <td><%=item.getCategoria()%></td>
                <td><%=item.getExistencia()%></td>
                <td><%=item.getPrecio()%></td>
            </tr>
            <%      
                    }
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
