/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

// ✅ CORRECTO: la anotación va aquí
@WebServlet("/CategoriaServlet")
public class CategoriaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener la lista de categorías desde el contexto de aplicación
        ServletContext context = getServletContext();
        List<String[]> categorias = (List<String[]>) context.getAttribute("categorias");

        if (categorias == null) {
            categorias = new ArrayList<>();
        }

        // Obtener el nombre desde el formulario
        String nombre = request.getParameter("nombre");

        // Generar ID (uno más que el tamaño actual)
        String id = String.valueOf(categorias.size() + 1);

        // Agregar la nueva categoría a la lista
        categorias.add(new String[]{id, nombre});

        // Guardar la lista actualizada en el contexto
        context.setAttribute("categorias", categorias);

        // Redirigir de vuelta a la página JSP
    response.sendRedirect(request.getContextPath() + "/vista/Categoria.jsp");
}
}
