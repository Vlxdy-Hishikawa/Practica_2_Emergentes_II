package com.Vlxdy;

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
@WebServlet(name = "Procesa_Registro_Usuarios", urlPatterns = {"/Procesa_Registro_Usuarios"})
public class Procesa_Registro_Usuarios extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            String nombres = request.getParameter("Nombre");
            String apellidos = request.getParameter("Apellidos");
            String  correo= request.getParameter("Correo");
            String  contrasena= request.getParameter("Password");
            String Borrar = request.getParameter("Borrar");

            Registro_Usuarios regu = new Registro_Usuarios();
                regu.setNombre(nombres);
                regu.setApellidos(apellidos);
                regu.setCorreo(correo);
                regu.setContraseña(contrasena);
        
            HttpSession ses = request.getSession();
            ArrayList<Registro_Usuarios> lista = (ArrayList<Registro_Usuarios>) ses.getAttribute("listausu");
            if (Borrar.equals("SI")){
                lista.clear();
            }
            lista.add(regu);
            response.sendRedirect("Mostrar_Registro_Usuarios.jsp");
    }
}
