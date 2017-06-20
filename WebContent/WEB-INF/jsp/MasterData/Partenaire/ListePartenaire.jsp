<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Libelle</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="value" items="${ listePartenaire }">
			<tr>
				<td><c:out value="${ value.libelle }" /></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
