<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style>
    .error {
        color: red; font-weight: bold;
    }
</style>
</head>
<body>
    <div align="center">
        <h2>Spring MVC Form Validation Demo - Login Form</h2>
        <table border="0" width="90%">
        <form:form action="AddPartenaire" commandName="lieuForm" method="post">
               <form:input path="libelle" type="text" /> 
				<div class="has-error">
                        <form:errors path="libelle" class="help-inline"/>
                 </div>
        </form:form>
        </table>
    </div>
</body>
</html>