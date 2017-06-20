<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">
<title>Stock</title>
<jsp:include page="${request.contextPath}/resources/include/basecss.jsp"></jsp:include>
</head>
<body>
	<section id="container" class="">
	
	<jsp:include page="${request.contextPath}/resources/include/baseHeader.jsp"></jsp:include>
	
	<jsp:include page="${request.contextPath}/resources/include/baseMenu.jsp"></jsp:include>
	
	<!--main content start--> 
	<section id="main-content">
	<section class="wrapper"> 
	<!--overview start-->
	<div class="row">
		<div class="col-lg-12">
			<h3 class="page-header">
				<i class="fa fa-laptop"></i> Stock
			</h3>
			<ol class="breadcrumb">
				<li><i class="fa fa-home"></i> <a href="#">Home</a></li>
				<li><i class="fa fa-angle-right"></i>Stock</li>
			</ol>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<section class="panel"> <header class="panel-heading"> Fiche Stock </header>
			<div class="panel-body">
				<form:form method="POST" action="AddStock" class="form-horizontal ">
					<div class="form-group">
						<form:label path="id" class="col-sm-2 control-label">ID</form:label>
						<div class="col-sm-2">
							<form:input path="id" class="form-control" value="${id }"/>
						</div>
						<form:label path="name" class="col-sm-1 control-label">Designation</form:label>
						<div class="col-sm-2">
							<form:input path="name" class="form-control" value="${name }" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="description" class="col-sm-2 control-label">Description</form:label>
						<div class="col-sm-5">
							<form:input path="description" class="form-control" value="${description }" />
						</div>
					</div>
					<div class="form-group">
					<form:label path="address" class="col-sm-2 control-label">Adresse</form:label>
						<div class="col-sm-5">
							<form:input path="address" class="form-control" value="${address }" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							<input type="submit" class="btn btn-default" value="Creer" />
							<button type="submit" class="btn btn-default">Rechercher</button>
							<button type="submit" class="btn btn-default" disabled="disabled">Modifier</button>
							<button type="submit" class="btn btn-default" disabled="disabled">Supprimer</button>
						</div>
					</div>
					<c:if test="${!empty message}">
						<label class="col-sm-2 control-label"></label>
						<div class="alert alert-block alert-info fade in col-sm-5">
							<button data-dismiss="alert" class="close close-sm" type="button">
								<i class="icon-remove"></i>
							</button>
							<strong>Info: </strong> ${message}
						</div>
					</c:if>
				</form:form>
			</div>
			</section>
		</div>
	</div>
	
		 <!-- Menu bouton -->
	<div class="row">
	<div class="col-lg-6">
		<section class="panel"> <header class="panel-heading"> Outils </header>
		<div class="panel-body">
			<a class="btn btn-default" data-toggle="modal" href="#listStock"> Liste Stock </a>
			
			
			
			<!-- Modal -->
			<div class="modal fad" id="listStock" tabindex="-1" role="dialog" aria-labelledby="ListeModal" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
							<h4 class="modal-title">Liste Stock</h4>
						</div>
						<div class="modal-body">
							<table class="table table-hover">
                              <thead>
                              <tr>
                                  <th>ID</th>
                                  <th>Stock</th>
                                  <th>Description</th>
                                  <th>Action</th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                  <td>01</td>
                                  <td>Stock A</td>
                                  <td>Stock</td>
                                  <td><a href="#">lien</a></td>
                              </tr>
                              </tbody>
                          </table>
						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal" type="button">Fermer</button>
						</div>
					</div>
				</div>
			</div>
			<!-- modal -->
			
			
			
		</div>
		</section>
	</div>
	</div>
	<!-- Menu bouton -->
	
	</section> 
	</section> 
	<!--main content end--> 
	</section>
	<jsp:include page="${request.contextPath}/resources/include/basescripts.jsp"></jsp:include>
</body>
</html>
