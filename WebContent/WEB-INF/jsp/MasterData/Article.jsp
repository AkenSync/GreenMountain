
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>Article</title>

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
				<i class="fa fa-laptop"></i> Article
			</h3>
			<ol class="breadcrumb">
				<li><i class="fa fa-home"></i> <a href="#">Home</a></li>
				<li><i class="fa fa-angle-right"></i>Article</li>
			</ol>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<section class="panel"> <header class="panel-heading">
			Fiche Article </header>
			<div class="panel-body">

				<form:form method="POST" action="AddArticle" class="form-horizontal">
					<div class="form-group">
						<form:label path="id" class="col-sm-2 control-label">ID</form:label>
						<div class="col-sm-2">
							<form:input path="id" class="form-control" value="${id}" />
						</div>
						<form:label path="code" class="col-sm-1 control-label">Code</form:label>
						<div class="col-sm-2">
							<form:input path="code" class="form-control" value="${code}" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="libelle" class="col-sm-2 control-label">Libelle</form:label>
						<div class="col-sm-5">
							<form:input path="libelle" class="form-control"
								value="${libelle}" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="prix" class="col-sm-2 control-label">prix</form:label>
						<div class="col-sm-5">
							<form:input path="prix" class="form-control" value="${prix}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							<input type="submit" class="btn btn-default" value="Creer" />
							<button id="rechercher" type="submit" class="btn btn-default"
								data-toggle="modal" data-target="#listearticle">Rechercher
								article</button>
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
	<!-- Modal -->
	<div id="listearticle" class="modal fade" role="dialog">
		<div class="modal-dialog ">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Liste des Articles</h4>
				</div>
				<div class="modal-body">
					<div id="articleresultat"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	</section> </section> <!--main content end--> </section>
	<jsp:include
		page="${request.contextPath}/resources/include/basescripts.jsp"></jsp:include>
</body>
</html>
<script>
        $(document).ready(function () {
        	 $('#rechercher').click(function ajaxCall() {

                 /* var code = $(this).attr('code');
                  var libelle = $(this).attr('libelle');
                  var price = $(this).attr('prix');*/

                  $.ajax({
                      url: '/akenSync-gm/ListeArticle',
                      type: 'GET',
                      //data: { id : idpass , hotelname : nomhotel , d : flightdate , flightnumb :flightnumber },
                      dataType: 'html'

                  })
                   .success(function (result) {
                       $('#articleresultat').html(result);

                   })
                   .error(function (xhr, status) {
                       alert(status);
                   })
              	}
                ); 


        });
            

    </script>