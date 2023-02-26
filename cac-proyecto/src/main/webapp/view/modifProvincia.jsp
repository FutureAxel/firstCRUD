<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Editar provincia</title>

	<!-- Bootstrap core CSS -->
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

	<link href="css/estilo.css" rel="stylesheet" type="text/css">
</head>

<body class="bg-light">
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
                                           
 					<li><a href="listarProvincias.jsp">Listado de Provincias</a></li>                             
                </ul>
            </div>
        </nav>
    </header>

	<div class="py-4 text-center">
		<img class="d-block mx-auto mb-4" src="./images/logo.jpg"
			alt="Logo caba" width="72" height="72">
		<h2>Editar Provincia</h2>
	</div>

	<div class="container">
	<div class="col-md-12 text-center">
		<form action="../controller/updProvincia.jsp" method="POST">

			<input type="hidden" name="idProvincia" value='<% out.print(request.getParameter("idProvincia")); %>'>
			
			<div class="row">
				<div class="col-md-12 mb-3">												  
					<input type="text" class="form-control" id="nombre" name="nombre" value="<% out.println(request.getParameter("nombre")); %>"  >
				</div>
			</div>

			<hr class="mb-4">

			<div class="row">
				<div class="d-flex justify-content-around">
					<button class="btn btn-primary btn-lg btn-block" type="submit">
						Modificar
					</button>
				</div>
			</div>
		</form>
	</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>