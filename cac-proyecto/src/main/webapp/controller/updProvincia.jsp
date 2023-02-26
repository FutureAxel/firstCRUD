<%@page import="dao.ProvinciaDAO2"%>
<%
	Integer idProvincia=Integer.valueOf(request.getParameter("idProvincia"));
	String nombre=request.getParameter("nombre");
	
	out.println(idProvincia);
	
	ProvinciaDAO2 dao=new ProvinciaDAO2();
	Boolean insertOk=dao.updProvincia(idProvincia, nombre);
	
	if(insertOk) {
		response.sendRedirect("../view/mensajeOk.jsp");
	}else {
		response.sendRedirect("../view/mensajeError.jsp");
	}
	
	
%>