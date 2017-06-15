<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">
<title>Green Mountain</title>
<jsp:include page="${request.contextPath}/resources/include/basecss.jsp"></jsp:include>
</head>
<body>
	<section id="container" class=""> <jsp:include
		page="${request.contextPath}/resources/include/baseHeader.jsp"></jsp:include>

	<jsp:include
		page="${request.contextPath}/resources/include/baseMenu.jsp"></jsp:include>

	<!--main content start--> <section id="main-content"> <section
		class="wrapper"> <!--overview start-->
	<div class="row">
		<div class="col-lg-12">
			<h3 class="page-header">
				<i class="fa fa-laptop"></i> Dashboard
			</h3>
			<ol class="breadcrumb">
				<li><i class="fa fa-home"></i> <a href="#">Home</a></li>
				<li><i class="fa fa-angle-right"></i>Dashboard</li>
			</ol>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<section class="panel"> <header class="panel-heading">
			Etat Articles</header>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Code</th>
						<th>Nom</th>
						<th>Prix</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="value" items="${ listeArticle }">
							<td>
								<c:out value="${ value.code }" />
							</td>							
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="value" items="${ listeArticle }">
							<td>
								<c:out value="${ value.libelle }" />
							</td>							
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="value" items="${ listeArticle }">
							<td>
								<c:out value="${ value.prix }" />
							</td>							
						</c:forEach>
					</tr>
				</tbody>
			</table>
			</section>
		</div>
	</div>
	
	</section> </section> <!--main content end--> </section>
	<jsp:include
		page="${request.contextPath}/resources/include/basescripts.jsp"></jsp:include>
</body>
</html>
