<%-- 
    Document   : menu
    Created on : 21 abr. 2025, 08:13:34
    Author     : EVELIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TechStock - Sistema de Inventario</title>
        <!-- Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com"></script>
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-100 min-h-screen flex flex-col">

        <!-- Navbar -->
        <nav class="bg-white shadow flex items-center px-4 py-2">
            <button class="text-gray-700 text-2xl">
                <i class="fas fa-bars"></i>
            </button>
        </nav>

        <div class="flex flex-1">
            <!-- Sidebar -->
            <%@include file="sidebar.jsp" %>


            <!-- Main content -->
            <main class="flex-1 p-6">
                <!-- Header -->
                <div class="mb-6">
                    <h1 class="text-2xl font-bold">Dashboard de Inventario</h1>
                    <% 
                modelo.Usuario usuarioLogueado = (modelo.Usuario) session.getAttribute("usuarioLogueado"); 
                if (usuarioLogueado != null) {
                    %>
                    <div class="text-gray-700 text-lg">
                        <i class="fas fa-user-circle mr-2"></i> 
                        Bienvenido, <strong><%= usuarioLogueado.getNombre() != null ? usuarioLogueado.getNombre() : usuarioLogueado.getUsuario() %></strong>
                    </div>
                    <% } %>
                </div>

                <!-- Info Boxes -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-6">
                    <div class="bg-white p-4 shadow rounded flex items-center space-x-4">
                        <div class="text-blue-500 text-3xl">
                            <i class="fas fa-cubes"></i>
                        </div>
                        <div>
                            <p class="text-gray-500">Total Productos</p>
                            <p class="text-xl font-semibold">1,410</p>
                        </div>
                    </div>
                    <div class="bg-white p-4 shadow rounded flex items-center space-x-4">
                        <div class="text-red-500 text-3xl">
                            <i class="fas fa-exclamation-triangle"></i>
                        </div>
                        <div>
                            <p class="text-gray-500">Productos Agotados</p>
                            <p class="text-xl font-semibold">41</p>
                        </div>
                    </div>
                    <div class="bg-white p-4 shadow rounded flex items-center space-x-4">
                        <div class="text-green-500 text-3xl">
                            <i class="fas fa-dollar-sign"></i>
                        </div>
                        <div>
                            <p class="text-gray-500">Valor Total Inventario</p>
                            <p class="text-xl font-semibold">$52,500</p>
                        </div>
                    </div>
                    <div class="bg-white p-4 shadow rounded flex items-center space-x-4">
                        <div class="text-yellow-500 text-3xl">
                            <i class="fas fa-box-open"></i>
                        </div>
                        <div>
                            <p class="text-gray-500">Productos Bajo Stock</p>
                            <p class="text-xl font-semibold">85</p>
                        </div>
                    </div>
                </div>

                <!-- Tables -->
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
                    <!-- Top 5 Productos -->
                    <div class="bg-white shadow rounded">
                        <div class="p-4 border-b">
                            <h2 class="font-semibold text-lg flex items-center gap-2">
                                <i class="fas fa-chart-pie"></i> Top 5 Productos con Menos Stock
                            </h2>
                        </div>
                        <div class="p-4">
                            <table class="w-full table-auto text-sm">
                                <thead>
                                    <tr class="text-left text-gray-600">
                                        <th class="p-2">Producto</th>
                                        <th class="p-2">Categoría</th>
                                        <th class="p-2">Stock Actual</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="border-t">
                                        <td class="p-2">Smartphone XYZ</td>
                                        <td class="p-2">Teléfonos</td>
                                        <td class="p-2"><span class="bg-red-500 text-white rounded px-2 py-1 text-xs">2</span></td>
                                    </tr>
                                    <tr class="border-t">
                                        <td class="p-2">Laptop ABC</td>
                                        <td class="p-2">Computadoras</td>
                                        <td class="p-2"><span class="bg-yellow-500 text-white rounded px-2 py-1 text-xs">5</span></td>
                                    </tr>
                                    <tr class="border-t">
                                        <td class="p-2">Auriculares Inalámbricos</td>
                                        <td class="p-2">Accesorios</td>
                                        <td class="p-2"><span class="bg-yellow-500 text-white rounded px-2 py-1 text-xs">7</span></td>
                                    </tr>
                                    <tr class="border-t">
                                        <td class="p-2">Tablet 123</td>
                                        <td class="p-2">Tablets</td>
                                        <td class="p-2"><span class="bg-yellow-400 text-white rounded px-2 py-1 text-xs">8</span></td>
                                    </tr>
                                    <tr class="border-t">
                                        <td class="p-2">Smartwatch PRO</td>
                                        <td class="p-2">Accesorios</td>
                                        <td class="p-2"><span class="bg-blue-400 text-white rounded px-2 py-1 text-xs">10</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Resumen por Categoría -->
                    <div class="bg-white shadow rounded">
                        <div class="p-4 border-b">
                            <h2 class="font-semibold text-lg flex items-center gap-2">
                                <i class="fas fa-tags"></i> Resumen por Categoría
                            </h2>
                        </div>
                        <div class="p-4">
                            <table class="w-full table-auto text-sm">
                                <thead>
                                    <tr class="text-left text-gray-600">
                                        <th class="p-2">Categoría</th>
                                        <th class="p-2">Total Productos</th>
                                        <th class="p-2">Valor Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="border-t">
                                        <td class="p-2">Teléfonos</td>
                                        <td class="p-2">450</td>
                                        <td class="p-2">$22,500</td>
                                    </tr>
                                    <tr class="border-t">
                                        <td class="p-2">Computadoras</td>
                                        <td class="p-2">280</td>
                                        <td class="p-2">$14,000</td>
                                    </tr>
                                    <tr class="border-t">
                                        <td class="p-2">Accesorios</td>
                                        <td class="p-2">680</td>
                                        <td class="p-2">$16,000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </main>
        </div>

        <!-- Footer -->
        <footer class="bg-white border-t p-4 text-center text-gray-500 text-sm">
            &copy; 2024 TechStock. Todos los derechos reservados.
        </footer>

    </body>
</html>

