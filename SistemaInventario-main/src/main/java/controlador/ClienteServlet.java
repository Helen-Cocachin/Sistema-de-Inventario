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

@WebServlet("/ClienteServlet")
public class ClienteServlet extends HttpServlet {

    private static int contadorClientes = 1;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener los datos del formulario
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");

        // Crear un arreglo con los datos del cliente
        String[] cliente = {
            String.valueOf(contadorClientes++), // contador como ID
            nombre,
            correo,
            telefono,
            direccion
        };

        // Obtener la lista actual de clientes del contexto
        ServletContext context = getServletContext();
        List<String[]> listaClientes = (List<String[]>) context.getAttribute("clientes");

        // Si no existe la lista, se crea
        if (listaClientes == null) {
            listaClientes = new ArrayList<>();
        }

        // Agregar nuevo cliente a la lista
        listaClientes.add(cliente);

        // Guardar la lista actualizada en el contexto
        context.setAttribute("clientes", listaClientes);

        // Redireccionar de nuevo al JSP
        response.sendRedirect(request.getContextPath() + "/vista/Cliente.jsp");
    }
}

