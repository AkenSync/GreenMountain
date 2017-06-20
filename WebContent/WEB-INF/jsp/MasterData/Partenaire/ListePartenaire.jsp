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
			<tr onclick="selectPartenaire('${ value.id }','${ value.idtypepartenaire}','${ value.libelle}')">
				<td><a href="#" ><c:out value="${ value.libelle }" /></a></td>				
			</tr>
		</c:forEach>
	</tbody>
</table>
<script>
	function selectPartenaire(id,idtype,lib){
		$('#id').val(id);
		changeDropdownVal('idTypePartenaire',idtype);
		$('#libelle').val(lib);
		fermerModal('myModal');
		enable(['modifierBtn','supprimerBtn']);
	}
	function enable(tabString){
		for (i = 0; i < tabString.length; i++) {
		    $('#'+tabString[i]).prop("disabled", false);
		}
	}
	function fermerModal(id){
		$('#'+id).modal('toggle');
	}
	function changeDropdownVal(id,value){
		$("#"+id+" > option").each(function() {
		    //alert(this.text + ' ' + this.value);
		    if(this.value==value) $(this).attr('selected','selected');
		});
	}
</script>