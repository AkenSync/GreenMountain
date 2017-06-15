<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<title>Partenaire</title>

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
				<i class="fa fa-laptop"></i> Partenaire
			</h3>
			<ol class="breadcrumb">
				<li><i class="fa fa-home"></i> <a href="#">Home</a></li>
				<li><i class="fa fa-angle-right"></i>Partenaire</li>
			</ol>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<section class="panel">
			 <header class="panel-heading"> Fiche Partenaire </header>
			<div class="panel-body">
				
				<form:form method="POST" action="AddPartenaire" class="form-horizontal">
					<div class="form-group">
						<form:label path="id" class="col-sm-2 control-label">ID</form:label>
						<div class="col-sm-2">
							<form:input path="id" class="form-control" value="${id}" />
						</div>
						<form:label path="typePartenaire" class="col-sm-1 control-label">Type Partenaire</form:label>
						<div class="col-sm-2">
							<form:select path="idTypePartenaire" class="form-control m-bot15">
								<form:option value="0" label="Select" />
								<form:options items="${typePartenaireList}" />
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<form:label path="libelle" class="col-sm-2 control-label">Libelle</form:label>
						<div class="col-sm-5">
							<form:input path="libelle" class="form-control" value="${libelle}" />
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
						<div class="alert alert-block alert-danger fade in col-sm-5">
							<button data-dismiss="alert" class="close close-sm" type="button">
								<i class="icon-remove"></i>
							</button>
							<strong>Erreur: </strong> ${message}
						</div>
					</c:if>
				</form:form>
			</div>
			</section>
		</div>
	</div>
	</section> 
	</section> 
	<!--main content end--> 
	</section>
	<jsp:include page="${request.contextPath}/resources/include/basescripts.jsp"></jsp:include>
</body>
</html>
