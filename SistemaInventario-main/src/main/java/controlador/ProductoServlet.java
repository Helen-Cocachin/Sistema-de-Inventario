/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet(name = "ProductoServlet", urlPatterns = {"/ProductoServlet"})
public class ProductoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        // Obtener datos del formulario
        String categoria = request.getParameter("categoria");
        String nombre = request.getParameter("nombre");
        String detalles = request.getParameter("detalles");

        // Crear producto como arreglo de String
        String[] producto = {categoria, nombre, detalles};

        // Obtener lista actual de productos
        ServletContext context = getServletContext();
        List<String[]> productos = (List<String[]>) context.getAttribute("productos");

        if (productos == null) {
            productos = new ArrayList<>();
        }

        // Agregar nuevo producto
        productos.add(producto);

        // Guardar la lista actualizada
        context.setAttribute("productos", productos);

        // Redirigir de vuelta al JSP
        response.sendRedirect(request.getContextPath()+"/vista/Producto.jsp");
    }
}
