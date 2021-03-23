package com.Vlxdy;

import com.Vlxdy.Inscripcion_Curso;
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
@WebServlet(name = "Procesa_Inscripcion_Curso", urlPatterns = {"/Procesa_Inscripcion_Curso"})
public class Procesa_Inscripcion_Curso extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            String Nombre = request.getParameter("Nombre");
            String Apellidos = request.getParameter("Apellidos");
            String Curso = request.getParameter("Curso");
            String Borrar = request.getParameter("Borrar");
            Inscripcion_Curso insc = new Inscripcion_Curso();
                insc.setNombre(Nombre);
                insc.setApellidos(Apellidos);
                insc.setCurso(Curso);
            HttpSession ses = request.getSession();
            ArrayList<Inscripcion_Curso> lista = (ArrayList<Inscripcion_Curso>) ses.getAttribute("listacurso");
            if (Borrar.equals("SI")){
                lista.clear();
            }
            lista.add(insc);
            response.sendRedirect("Mostrar_Inscripcion_Curso.jsp");           
    }
}