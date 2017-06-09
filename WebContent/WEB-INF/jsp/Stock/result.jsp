<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">
<title>Stock Result</title>
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
				<i class="fa fa-laptop"></i> Result
			</h3>
			<ol class="breadcrumb">
				<li><i class="fa fa-home"></i> <a href="#">Home</a></li>
				<li><i class="fa fa-angle-right"></i>Stock</li>
			</ol>
		</div>
	</div>
	
	
	<div class="row">
          <div class="col-lg-12">
			<section class="panel"> 
			<header class="panel-heading"> Resultat </header>
			<div class="panel-body">
				<p>Message: </p>
				
				<table>
					<tr>
						<td>ID</td>
						<td>${id}</td>
					</tr>
					<tr>
						<td>Code</td>
						<td>${code}</td>
					</tr>
					<tr>
						<td>Label</td>
						<td>${label}</td>
					</tr>
					<tr>
						<td>Description</td>
						<td>${description}</td>
					</tr>
				</table>
				
				<p><a href="stock" class="btn btn-default">retour</a> </p>
				
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
