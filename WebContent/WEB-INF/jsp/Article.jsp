<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>Student Information</h2>
<form:form method="POST" action="/akenSync-gm/ArticleController/AddArticle">
   <table>
    <tr>
        <td><form:label path="id">id</form:label></td>
        <td><form:input path="id" value="${message}" /></td>
    </tr>
    <tr>
        <td><form:label path="libelle">libelle</form:label></td>
        <td><form:input path="libelle" value="" /></td>
    </tr>
    <tr>
        <td><form:label path="code">code</form:label></td>
        <td><form:input path="code" /></td>
    </tr>
    <tr>
        <td><form:label path="prix">prix</form:label></td>
        <td><form:input path="prix" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</body>
</html>