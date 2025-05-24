<%-- 
    Document   : Proveedores
    Created on : 24 may. 2025, 1:16:55 a. m.
    Author     : gadie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>TechStock - Proveedores</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet" />
    </head>
    <body class="bg-gray-100 min-h-screen flex flex-col">
        <!-- Navbar -->
        <nav class="bg-white shadow flex items-center px-4 py-2">
            <button class="text-gray-700 text-2xl">
                <i class="fas fa-bars"></i>
            </button>
            <h1 class="text-xl font-bold ml-4">TechStock - Proveedores</h1>
        </nav>

        <div class="flex flex-1">
            <%@ include file="sidebar.jsp" %>

            <!-- Main content -->
            <main class="flex-1 p-6">
                <div class="max-w-7xl mx-auto">
                    <h2 class="text-2xl font-semibold text-gray-700 mb-6">Gestión de Proveedores</h2>
                    <!-- Formulario para agregar producto -->
                    <div class="bg-white p-6 rounded-lg shadow-md mb-8">
                        <h3 class="text-lg font-semibold mb-4">Agregar Nuevo Proveedor</h3>
                        <div>
                            <label class="block text-gray-600 mb-1">RUC</label>
                            <input type="text" name="nombre" required
                                   class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" />
                        </div>
                        <div>
                            <label class="block text-gray-600 mb-1">Nombre del Proveedor</label>
                            <input type="text" name="nombre" required
                                   class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" />
                        </div>
                    </div>
                        <button type="submit"
                                class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 transition">Agregar</button>
                    </div>    
                </div>
            </main>
        </div>
    </body>
</html>

