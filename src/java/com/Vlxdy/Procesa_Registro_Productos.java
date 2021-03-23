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
@WebServlet(name = "Procesa_Registro_Productos", urlPatterns = {"/Procesa_Registro_Productos"})
public class Procesa_Registro_Productos extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        
        String Producto = request.getParameter("Producto");
        String Categoria = request.getParameter("Categoria");
        int Existencia = Integer.parseInt(request.getParameter("Existencia"));
        int Precio = Integer.parseInt(request.getParameter("Precio"));
        String Borrar = request.getParameter("Borrar");
        
        Registro_Productos pro = new Registro_Productos();
            pro.setProducto(Producto);
            pro.setCategoria(Categoria);
            pro.setExistencia(Existencia);
            pro.setPrecio(Precio);
            
        ArrayList<Registro_Productos> lista = (ArrayList<Registro_Productos>) sesion.getAttribute("listapro");
        if (Borrar.equals("SI")){
                lista.clear();
            }
        lista.add(pro);
        response.sendRedirect("Mostrar_Registro_Productos.jsp");
    }
}
