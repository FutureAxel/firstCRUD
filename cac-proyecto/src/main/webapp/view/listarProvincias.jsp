<!doctype html>
<%@page import="model.Provincia"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProvinciaDAO2"%>
<html lang="en">

<head>
    <title>Listar Provincias</title>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
	
	<link href="css/estilo.css" rel="stylesheet" type="text/css">
</head>

<body class="text-center bg-light">
    <header>
        <nav>
            <div id="header">
                <ul class="nav">
                	<li><a href="inicio.html">Inicio</a></li> 
 					<li><a href="">Usuarios</a>
                        <ul>
                            <li><a href="altaUsuario.jsp">Crear Usuario</a></li>
                            <li><a href="listarUsuarios2.jsp">Lista de Usuarios</a></li>
                        </ul>
                    </li> 
                                           
 					<li><a href="altaProvincia.jsp">Alta de Provincias</a></li>                             
                </ul>
            </div>
        </nav>
    </header>
    <main>
        <div class="container">
            <div class="py-4">
                <img src="images/logo.jpg" alt="Logo" width="72" height="72">
                <p class="lead py-2">Listado de Provincias</p>
            </div>	

            <table class="table table-hover table-sm">
                <thead class="table-dark">
                  <tr>
                    <th scope="col">#ID</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Operaciones</th>
                  </tr>
                </thead>
                <tbody>
                <% 
				ProvinciaDAO2 dao=new ProvinciaDAO2();
                List<Provincia> listProv=dao.listarProvincias();
                
                for(Provincia prov: listProv) {
                	out.println("<tr>");
                	
                	out.println("<td>");
                	out.println(prov.getIdProvincia());
                	out.println("</td>");

                	out.println("<td>");
                	out.println(prov.getNombre());
                	out.println("</td>");

                	out.println("<td>");
                	out.println("<a style='text-decoration: none' href='modifProvincia.jsp?idProvincia="+prov.getIdProvincia()+"&nombre="+prov.getNombre()+"'>");
                	out.println("<i class='bi bi-pencil-fill'></i>");
                	out.println("</a>");
                	out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#exampleModal' data-bs-whatever='"+prov.getIdProvincia()+"'>");
                	out.println("<i class='bi bi-trash-fill ms-3'></i>");
                	out.println("</a>");
                	out.println("</td>");
                	out.println("</tr>");
                	
                }
                
                %>

                </tbody>
              </table>            
					
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar Provincia</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<form action="../controller/delProvincia.jsp" method="post">
									<div class="modal-body">
										<div class="mb-3">
											<label for="message-text" class="col-form-label mt-3 fs-3">Desea eliminar la provincia?</label>
											<input type="hidden" class="form-control" id="idProvincia" name="idProvincia">
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
										<button type="submit" class="btn btn-primary">Eliminar</button>
									</div>						  
								</form>
							</div>
						</div>
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
        
    <script src="js/modal.js">
        </script>
</body>

</html>