/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import dao.UsuarioDAO;
import modelo.Usuario;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import jakarta.servlet.http.HttpSession;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private UsuarioDAO usuarioDAO = new UsuarioDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        Usuario usuarioValido = usuarioDAO.validarUsuario(usuario, clave);

        if (usuarioValido != null) {
            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogueado", usuarioValido);
            response.sendRedirect("vista/menu.jsp");
        } else {
            request.setAttribute("error", "Usuario o clave incorrectos");
            request.getRequestDispatcher("vista/login.jsp").forward(request, response); // ✅ CORREGIDO
        }
    }
}
