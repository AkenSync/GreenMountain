<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
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

	<section id="container" class=""> <header
		class="header dark-bg">
	<div class="toggle-nav">
		<div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom">
			<i class="icon_menu"></i>
		</div>
	</div>

	<!--logo start--> <a href="index.html" class="logo">Green <span
		class="lite">Mountain</span>
	</a> <!--logo end-->

	<div class="nav search-row" id="top_menu">
		<!--  search form start -->
		<ul class="nav top-menu">
			<li>
				<form class="navbar-form">
					<input class="form-control" placeholder="Search" type="text">
				</form>
			</li>
		</ul>
		<!--  search form end -->
	</div>

	<div class="top-nav notification-row">
		<!-- notificatoin dropdown start-->
		<ul class="nav pull-right top-menu">

			<!-- user login dropdown start-->
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <span class="profile-ava">
						<img alt="" src="<c:url value="/resources/img/usericon30.png" />">
				</span> <span class="username">User Name</span> <b class="caret"></b>
			</a>
				<ul class="dropdown-menu extended logout">
					<div class="log-arrow-up"></div>
					<li class="eborder-top"><a href="#"> <i
							class="icon_profile"></i> My Profile
					</a></li>
					<li><a href="login.html"> <i class="icon_key_alt"></i> Log
							Out
					</a></li>
				</ul></li>
			<!-- user login dropdown end -->
		</ul>
		<!-- notificatoin dropdown end-->
	</div>
	</header> <!--header end--> <!--sidebar start--> <aside>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu">
			<li class="active"><a class="" href="index.html"> <i
					class="icon_house_alt"></i> <span>Dashboard</span>
			</a></li>
			<li class="sub-menu"><a href="javascript:;" class=""> <i
					class="icon_document_alt"></i> <span>Achat</span> <span
					class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="#">Fournisseur</a></li>
					<li><a class="" href="#">Appel d'offre</a></li>
					<li><a class="" href="#">Commande </a></li>
					<li><a class="" href="#">Livraison</a></li>
					<li><a class="" href="#">Facture</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;" class=""> <i
					class="icon_document_alt"></i> <span>Vente</span> <span
					class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="#">Client</a></li>
					<li><a class="" href="#">Devis</a></li>
					<li><a class="" href="#">Commande</a></li>
					<li><a class="" href="#">Livraison</a></li>
					<li><a class="" href="#">Facture</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;" class=""> <i
					class="icon_document_alt"></i> <span>Stock</span> <span
					class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="#">Fiche Produit</a></li>
					<li><a class="" href="#">Entre Stock</a></li>
					<li><a class="" href="#">Sortie Stock</a></li>
					<li><a class="" href="#">Transfert</a></li>
					<li><a class="" href="#">Inventaire</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;" class=""> <i
					class="icon_document_alt"></i> <span>RDV</span> <span
					class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="#">Rendez-Vous</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;" class=""> <i
					class="icon_document_alt"></i> <span>Personnel</span> <span
					class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="#">Fiche Personnel</a></li>
				</ul></li>
		</ul>
		<!-- sidebar menu end-->
	</div>
	</aside> <!--sidebar end--> <!--main content start--> <section
		id="main-content"> <section class="wrapper"> <!--overview start-->
	<div class="row">
		<div class="col-lg-12">
			<h3 class="page-header">
				<i class="fa fa-laptop"></i> Dashboard
			</h3>
			<ol class="breadcrumb">
				<li><i class="fa fa-home"></i> <a href="index.html">Home</a></li>
				<li><i class="fa fa-laptop"></i>Dashboard</li>
			</ol>
		</div>
	</div>

	</section> </section> <!--main content end--> </section>
<%-- 
	<%@include file="include/basescripts.jsp"%> --%>
	
	<jsp:include page="${request.contextPath}/resources/include/basescripts.jsp"></jsp:include>
</body>
</html>
