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
    <title>Devis</title>
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
					<h3 class="page-header"><i class="fa fa-laptop"></i> Vente</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-laptop"></i>Vente</li>
            <li><i class="fa fa-laptop"></i>Devis</li>
					</ol>
				</div>
			</div>

      <!--Formulaire-->
      <div class="row">
          <div class="col-lg-12">

            <!-- Entete -->
              <section class="panel">
                  <header class="panel-heading">
                     Devis
                  </header>
                  <div class="panel-body">
                      <form class="form-horizontal " method="get">
                          <div class="form-group">
                              <label class="col-sm-2 control-label">ID</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control">
                              </div>
                              <label class="col-sm-1 control-label">Code</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 control-label">Date du document</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 control-label">Client</label>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control">
                              </div>
                          </div>


                          <div class="form-group">
                              <label class="col-sm-2 control-label"></label>
                              <div class="col-sm-10">
                                <button type="submit" class="btn btn-default">Rechercher</button>
                                <button type="submit" class="btn btn-default">Creer</button>
                                <button type="submit" class="btn btn-default" disabled="disabled">Modifier</button>
                                <button type="submit" class="btn btn-default" disabled="disabled">Supprimer</button>
                              </div>
                          </div>
                      </form>
                  </div>
              </section>


              <!-- Recherche Article -->
              <div class="row">
              <div class="col-sm-6">
              <section class="panel">
                <header class="panel-heading">
                   Ajouter un article
                </header>
                  <div class="panel-body">
                      <form class="form-horizontal " method="get">
                        <div class="form-group">

                            <div class="col-sm-10">
                                <input type="text" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-default">Rechercher</button>
                        </div>
                      </form>
                  </div>
              </section>
              </div>
            </div>
              <!-- Liste -->
              <section class="panel">
                  <header class="panel-heading">
                     Liste d'article
                  </header>
                  <div class="panel-body">
                    <div class="form-group ">
                        <p class="col-sm-6" >Article</p>
                        <p class="col-sm-2" >Prix Unitaire</p>
                        <p class="col-sm-2" >Quantite</p>
                    </div>
                      <form class="form-horizontal " method="get">

                            <div class="form-group ">
                              <p class="col-sm-6" ><a href="#">samsung-galaxy-a5-2017</a></p>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control">
                              </div>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control">
                              </div>
                              <div class="col-sm-2">
                                  <button type="submit" class="btn btn-default">Supprimer</button>
                              </div>
                            </div>

                            <div class="form-group ">
                              <p class="col-sm-6" ><a href="#">samsung-galaxy-a5-2017</a></p>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control">
                              </div>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control">
                              </div>
                              <div class="col-sm-2">
                                  <button type="submit" class="btn btn-default">Supprimer</button>
                              </div>
                            </div>

                            <div class="form-group ">
                              <p class="col-sm-6" ><a href="#">samsung-galaxy-a5-2017</a></p>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control">
                              </div>
                              <div class="col-sm-2">
                                  <input type="text" class="form-control">
                              </div>
                              <div class="col-sm-2">
                                  <button type="submit" class="btn btn-default">Supprimer</button>
                              </div>
                            </div>

                            <div class="form-group ">
                              <label class="col-sm-10 control-label">Total</label>
                              <div class="col-sm-1">
                                  <input type="text" class="form-control">
                              </div>
                            </div>

                            <div class="form-group ">
                              <label class="col-sm-10 control-label">TVA</label>
                              <div class="col-sm-1">
                                  <input type="text" class="form-control">
                              </div>
                            </div>

                            <div class="form-group ">
                              <label class="col-sm-10 control-label">TTC</label>
                              <div class="col-sm-1">
                                  <input type="text" class="form-control">
                              </div>
                            </div>



                          <div class="form-group">
                            <p class="col-sm-10" ></p>

                            <div class="col-sm-2">
                                <button type="submit" class="btn btn-default">Valider</button>
                            </div>
                          </div>
                      </form>
                  </div>
              </section>

          </div>
      </div>
      <!--Formulaire end-->



          </section>

      </section>
      <!--main content end-->
  </section>
  	<jsp:include page="${request.contextPath}/resources/include/basescripts.jsp"></jsp:include>

  <script>

      //knob
      $(function() {
        $(".knob").knob({
          'draw' : function () {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
          $("#owl-slider").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

	  /* ---------- Map ---------- */
	$(function(){
	  $('#map').vectorMap({
	    map: 'world_mill_en',
	    series: {
	      regions: [{
	        values: gdpData,
	        scale: ['#000', '#000'],
	        normalizeFunction: 'polynomial'
	      }]
	    },
		backgroundColor: '#eef3f7',
	    onLabelShow: function(e, el, code){
	      el.html(el.html()+' (GDP - '+gdpData[code]+')');
	    }
	  });
	});

  </script>

  </body>
</html>
