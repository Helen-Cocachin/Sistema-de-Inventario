<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>TechStock - Gestión de Productos</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet" />
    </head>
    <body class="bg-gray-100 min-h-screen flex flex-col">
        <!-- Navbar -->
        <nav class="bg-white shadow flex items-center px-4 py-2">
            <button class="text-gray-700 text-2xl">
                <i class="fas fa-bars"></i>
            </button>
            <h1 class="text-xl font-bold ml-4">TechStock - Productos</h1>
        </nav>

        <div class="flex flex-1">
            <%@ include file="sidebar.jsp" %>

            <!-- Main content -->
            <main class="flex-1 p-6">
                <div class="max-w-7xl mx-auto">
                    <h2 class="text-2xl font-semibold text-gray-700 mb-6">Gestión de Productos</h2>

                    <!-- Formulario para agregar producto -->
                    <div class="bg-white p-6 rounded-lg shadow-md mb-8">
                        <h3 class="text-lg font-semibold mb-4">Agregar Nuevo Producto</h3>
                        <form action="<%= request.getContextPath() %>/ProductoServlet" method="post" class="space-y-4">
                            <div>
                                <label class="block text-gray-600 mb-1">Categoría</label>
                                <select name="categoria" required
                                        class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500">
                                    <option value="" disabled selected>Seleccione una categoría</option>
                                    <%
                                        List<String[]> categorias = (List<String[]>) application.getAttribute("categorias");
                                        if (categorias != null && !categorias.isEmpty()) {
                                            for (String[] cat : categorias) {
                                    %>
                                    <option value="<%= cat[0] %>"><%= cat[1] %></option>
                                    <%
                                            }
                                        } else {
                                    %>
                                    <option disabled>No hay categorías disponibles</option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>

                            <div>
                                <label class="block text-gray-600 mb-1">Nombre del Producto</label>
                                <input type="text" name="nombre" required
                                       class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500" />
                            </div>

                            <div>
                                <label class="block text-gray-600 mb-1">Detalles</label>
                                <textarea name="detalles" rows="3" required
                                          class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"></textarea>
                            </div>

                            <button type="submit"
                                    class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 transition">Agregar</button>
                        </form>
                    </div>

                    <!-- Tabla de productos -->
                    <div class="bg-white p-6 rounded-lg shadow-md">
                        <h3 class="text-lg font-semibold mb-4">Listado de Productos</h3>
                        <div class="overflow-x-auto">
                            <table class="min-w-full divide-y divide-gray-200">
                                <thead class="bg-gray-50">
                                    <tr>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Categoría</th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Nombre</th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Detalles</th>
                                        <th class="px-6 py-3 text-center text-xs font-medium text-gray-500 uppercase">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200">
                                    <%
                                        // Obtener productos y categorías para mostrar nombre de categoría
                                        List<String[]> productos = (List<String[]>) application.getAttribute("productos");
                                        List<String[]> categoriasMap = (List<String[]>) application.getAttribute("categorias");

                                        if (productos != null && !productos.isEmpty()) {
                                            for (String[] prod : productos) {
                                                String nombreCategoria = "Desconocida";
                                                if (categoriasMap != null) {
                                                    for (String[] c : categoriasMap) {
                                                        if (c[0].equals(prod[0])) {
                                                            nombreCategoria = c[1];
                                                            break;
                                                        }
                                                    }
                                                }
                                    %>
                                    <tr>
                                        <td class="px-6 py-4"><%= nombreCategoria %></td>
                                        <td class="px-6 py-4"><%= prod[1] %></td>
                                        <td class="px-6 py-4"><%= prod[2] %></td>
                                        <td class="px-6 py-4 text-center space-x-2">
                                            <button class="text-yellow-500 hover:text-yellow-700" title="Editar">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                            <button class="text-red-500 hover:text-red-700" title="Eliminar">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <%
                                            }
                                        } else {
                                    %>
                                    <tr>
                                        <td colspan="4" class="text-center py-4 text-gray-500">No hay productos registrados.</td>
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
