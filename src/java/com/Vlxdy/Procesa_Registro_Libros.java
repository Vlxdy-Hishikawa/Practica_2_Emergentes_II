package com.Vlxdy;

import com.Vlxdy.Registro_Libros;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Vlxdy Hishikawa
 */
@WebServlet(name = "Procesa_Registro_Libros", urlPatterns = {"/Procesa_Registro_Libros"})
public class Procesa_Registro_Libros extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            String Titulo = request.getParameter("Titulo");
            String Autor = request.getParameter("Autor");
            String Resumen = request.getParameter("Resumen");
            String Medio = request.getParameter("Medio");
            String Borrar = request.getParameter("Borrar");

            Registro_Libros Libros = new Registro_Libros();
                Libros.setTitulo(Titulo);
                Libros.setAutor(Autor);
                Libros.setResumen(Resumen);
                Libros.setMedio(Medio);
        
            HttpSession ses = request.getSession();
            ArrayList<Registro_Libros> lista = (ArrayList<Registro_Libros>) ses.getAttribute("Lista_de_Libros");
            if (Borrar.equals("SI")){
                lista.clear();
            }
            lista.add(Libros);
            response.sendRedirect("Mostrar_Registro_Libros.jsp");
    }         
}