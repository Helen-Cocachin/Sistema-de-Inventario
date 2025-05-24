<%-- 
    Document   : Categiria
    Created on : 21 abr. 2025, 11:07:21
    Author     : EVELIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TechStock - Gestión de Categorías</title>
        <!-- Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com"></script>
        <!-- para trabajar con iconos -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-100 min-h-screen flex flex-col">

        <!-- Navbar -->
        <nav class="bg-white shadow flex items-center px-4 py-2">
            <button class="text-gray-700 text-2xl">
                <i class="fas fa-bars"></i>
            </button>
            <h1 class="text-xl font-bold ml-4">TechStock - Categorías</h1>
        </nav>

        <div class="flex flex-1">
            <!-- Sidebar -->
            <%@ include file="sidebar.jsp" %>

            <!-- Main content -->
            <main class="flex-1 p-6">
                <div class="max-w-7xl mx-auto">
                    <h2 class="text-2xl font-semibold text-gray-700 mb-6">Gestión de Categorías</h2>

                    <!-- Formulario para agregar categoría -->
                    <div class="bg-white p-6 rounded-lg shadow-md mb-8">
                        <h3 class="text-lg font-semibold mb-4">Agregar Nueva Categoría</h3>
                        <form action="<%= request.getContextPath() %>/CategoriaServlet" method="post" class="space-y-4">

                            <div>
                                <label class="block text-gray-600 mb-1">Nombre de la Categoría</label>
                                <input type="text" name="nombre" required
                                       class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500">
                            </div>
                            <button type="submit"
                                    class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 transition">Agregar</button>
                        </form>
                    </div>

                    <!-- Tabla de categorías -->
                    <div class="bg-white p-6 rounded-lg shadow-md">
                        <h3 class="text-lg font-semibold mb-4">Listado de Categorías</h3>
                        <div class="overflow-x-auto">
                            <table class="min-w-full divide-y divide-gray-200">
                                <thead class="bg-gray-50">
                                    <tr>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">ID</th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Nombre</th>
                                        <th class="px-6 py-3 text-center text-xs font-medium text-gray-500 uppercase tracking-wider">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200">
                                    <%
                                        List<String[]> categorias = (List<String[]>) application.getAttribute("categorias");
                                        if (categorias != null) {
                                            for (String[] cat : categorias) {
                                    %>
                                    <tr>
                                        <td class="px-6 py-4"><%= cat[0] %></td>
                                        <td class="px-6 py-4"><%= cat[1] %></td>
                                        <td class="px-6 py-4 text-center space-x-2">
                                            <button class="text-yellow-500 hover:text-yellow-700">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                            <button class="text-red-500 hover:text-red-700">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <%
                                            }
                                        } else {
                                    %>
                                    <tr>
                                        <td colspan="3" class="text-center py-4 text-gray-500">No hay categorías registradas.</td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </main>
        </div>
    </body>
</html>
