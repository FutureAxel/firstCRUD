<!doctype html>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="dao.UsuarioDAO2"%>
<html lang="en">

<head>
    <title>Listar Usuarios</title>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

	<link href="css/estilo.css" rel="stylesheet" type="text/css">
</head>

<body class="text-center bg-light">
    <header>
        <nav>
            <div id="header">
                <ul class="nav">
                	<li><a href="inicio.html">Inicio</a></li> 
 					<li><a href="altaUsuario.jsp">Crear Usuario</a></li>
                                           
 					<li><a href="">Provincias</a>
                        <ul>
                            <li><a href="listarProvincias.jsp">Listado de Provincias</a></li>
                            <li><a href="altaProvincia.jsp">Alta de Provincias</a></li>
                        </ul>
                    </li>        
                </ul>
            </div>
        </nav>
    </header>
    <main>
        <div class="container">
            <div class="py-4">
                <img src="images/logo.jpg" alt="Logo" width="72" height="72">
                <p class="lead py-2">Listado de Usuarios</p>
            </div>

            <table class="table table-hover table-sm">
                <thead class="table-dark">
                  <tr>
                    <th scope="col">#ID</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">Clave</th>
                  </tr>
                </thead>
                <tbody>
                <% 
                UsuarioDAO2 dao=new UsuarioDAO2();
                List<Usuario> listUsu=dao.listarUsuarios();
                
                for(Usuario usu: listUsu) {
                	out.println("<tr>");

                	out.println("<td>");
					out.println(usu.getIdUsuario());
                	out.println("</td>");

                	out.println("<td>");
					out.println(usu.getUsuario());
                	out.println("</td>");

                	out.println("<td>");
					out.println(usu.getClave());
                	out.println("</td>");

                	out.println("</tr>");
                }
                
                %>

                </tbody>
              </table>            

        </div>

    </main>
    <footer>
        <!-- place footer here -->
    </footer>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>

</html>