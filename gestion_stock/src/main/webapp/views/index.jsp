<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
	<h1 align="center"> 
	<s:url namespace="/" action="produits" var="lien1" ></s:url>
	<s:a href="%{lien1}" > produits1 </s:a>	
 </h1>
</body>
</html>