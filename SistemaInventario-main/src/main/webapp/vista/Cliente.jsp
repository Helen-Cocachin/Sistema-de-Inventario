<%-- 
    Document   : Cliente
    Created on : 21 abr. 2025, 11:44:52
    Author     : EVELIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>TechStock - Gestión de Clientes</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">

    <!-- Navbar -->
    <nav class="bg-white shadow flex items-center px-4 py-2">
        <button class="text-gray-700 text-2xl">
            <i class="fas fa-bars"></i>
        </button>
        <h1 class="text-xl font-bold ml-4">TechStock - Clientes</h1>
    </nav>

    <div class="flex flex-1">
        <!-- Sidebar -->
        <%@ include file="sidebar.jsp" %>

        <!-- Main content -->
        <main class="flex-1 p-6">
            <div class="max-w-7xl mx-auto">
                <h2 class="text-2xl font-semibold text-gray-700 mb-6">Gestión de Clientes</h2>

                <!-- Formulario para agregar cliente -->
                <div class="bg-white p-6 rounded-lg shadow-md mb-8">
                    <h3 class="text-lg font-semibold mb-4">Agregar Nuevo Cliente</h3>
                    <form action="<%= request.getContextPath() %>/ClienteServlet" method="post" class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <input type="text" name="nombre" placeholder="Nombre" required class="border rounded px-3 py-2">
                        <input type="email" name="correo" placeholder="Correo electrónico" required class="border rounded px-3 py-2">
                        <input type="text" name="telefono" placeholder="Teléfono" required class="border rounded px-3 py-2">
                        <input type="text" name="direccion" placeholder="Dirección" required class="border rounded px-3 py-2">
                        <div class="md:col-span-2">
                            <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 transition">
                                Agregar
                            </button>
                        </div>
                    </form>
                </div>

                <!-- Tabla de clientes -->
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h3 class="text-lg font-semibold mb-4">Listado de Clientes</h3>
                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Contador</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Nombre</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Correo electrónico</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Teléfono</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Dirección</th>
                                    <th class="px-6 py-3 text-center text-xs font-medium text-gray-500 uppercase tracking-wider">Acciones</th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                <%
                                    List<String[]> clientes = (List<String[]>) application.getAttribute("clientes");
                                    if (clientes != null && !clientes.isEmpty()) {
                                        for (String[] cliente : clientes) {
                                %>
                                <tr>
                                    <td class="px-6 py-4"><%= cliente[0] %></td>
                                    <td class="px-6 py-4"><%= cliente[1] %></td>
                                    <td class="px-6 py-4"><%= cliente[2] %></td>
                                    <td class="px-6 py-4"><%= cliente[3] %></td>
                                    <td class="px-6 py-4"><%= cliente[4] %></td>
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
                                    <td colspan="6" class="text-center py-4 text-gray-500">No hay clientes registrados.</td>
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
