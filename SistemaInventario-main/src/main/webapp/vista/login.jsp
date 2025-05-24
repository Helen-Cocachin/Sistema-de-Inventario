<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="card shadow p-4" style="width: 100%; max-width: 400px;">
                <h4 class="text-center mb-4">BIENVENIDO</h4>

                <form method="post" action="<%= request.getContextPath() %>/login">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="usuario" placeholder="Usuario" required>
                        <label>Nombre de usuario</label>
                    </div>

                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" name="clave" placeholder="Clave" required>
                        <label>Contraseña</label>
                    </div>

                    <button type="submit" class="btn btn-primary w-100 mb-2">Ingresar</button>
                </form>

                <% if (request.getAttribute("error") != null) { %>
                <div class="alert alert-danger text-center mt-3">
                    <%= request.getAttribute("error") %>
                </div>
                <% } %>
            </div>
        </div>
    </body>
</html>
