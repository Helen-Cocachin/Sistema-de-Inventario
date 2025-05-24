<%-- 
    Document   : sidebar
    Created on : 21 abr. 2025, 10:58:20
    Author     : EVELIN
--%>


<aside class="w-64 bg-gray-800 text-white flex flex-col">
    <div class="flex items-center justify-center h-16 text-xl font-semibold border-b border-gray-700">
        TechStock
    </div>
    <nav class="flex-1 p-4 space-y-2">
        <a href="<%= request.getContextPath()%>/vista/menu.jsp" class="flex items-center space-x-2 p-2 rounded hover:bg-gray-700">
            <i class="fas fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
        <a href="<%= request.getContextPath() %>/vista/Producto.jsp" class="flex items-center space-x-2 p-2 rounded hover:bg-gray-700">
            <i class="fas fa-box"></i>
            <span>Productos</span>
        </a>
        <a href="Proveedores.jsp" class="flex items-center space-x-2 p-2 rounded hover:bg-gray-700">
            <i class="fas fa-plus"></i>
            <span>Proveedores</span>
        </a>

        <a href="<%= request.getContextPath() %>/vista/Categoria.jsp" class="flex items-center space-x-2 p-2 rounded hover:bg-gray-700">
            <i class="fas fa-edit"></i>
            <span>Categoria</span>
        </a>

        <a href="<%= request.getContextPath()%>/vista/Cliente.jsp" class="flex items-center space-x-2 p-2 rounded hover:bg-gray-700">
            <i class="fas fa-edit"></i>
            <span>Cliente</span>
        </a>
        <!-- Botón estilizado como los demás enlaces -->
        <form method="post" action="<%= request.getContextPath() %>/salir" class="pt-2">
            <button type="submit" class="flex items-center space-x-2 w-full p-2 rounded bg-red-800 hover:bg-red-900 text-white">
                <i class="fas fa-sign-out-alt"></i>
                <span>Cerrar sesión</span>
            </button>
        </form>
    </nav>
</aside>
