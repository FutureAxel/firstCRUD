<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>

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
                	<li><a href="login.html">Nuevo Ingreso</a></li> 
 					<li><a href="">Usuarios</a>
                        <ul>
                            <li><a href="altaUsuario.jsp">Crear Usuario</a></li>
                            <li><a href="listarUsuarios2.jsp">Listado de Usuarios</a></li>
                        </ul>
                    </li>                    
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


	<div class="py-4 text-center">
		<img class="d-block mx-auto mb-4" src="./images/logo.jpg"
			alt="Logo caba" width="72" height="72">
		<h2>Mensaje</h2>
		<p class="lead">La operaci�n se realiz� correctamente.</p>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>