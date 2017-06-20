<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Code</th>
			<th>Libelle</th>
			<th>Prix</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="value" items="${ listeArticle }">
			<tr>
				<td><c:out value="${ value.code }" /></td>
				<td><c:out value="${ value.libelle }" /></td>
				<td><c:out value="${ value.prix }" /></td>
				<td><button type="button" class="btn btn-default" data-dismiss="modal">Valider</button></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
