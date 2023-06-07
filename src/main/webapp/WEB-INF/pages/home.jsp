<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gestion Empleados</title>
</head>
<body>
	<div align="center">
		<h1>Lista de Empleados</h1>
		
		<table border="1">

			<th>Nombres</th>
			<th>Email</th>
			<th>Dirección</th>
			<th>Telefono</th>
			<th>Acción</th>

			<c:forEach var="employee" items="${listEmployee}">
				<tr>

					<td>${employee.name}</td>
					<td>${employee.email}</td>
					<td>${employee.address}</td>
					<td>${employee.telephone}</td>
					<td><a href="editEmployee?id=${employee.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteEmployee?id=${employee.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<h4>
			Registrar Nuevo Empleado <a href="newEmployee">aqui</a>
		</h4>
	</div>
</body>
</html>