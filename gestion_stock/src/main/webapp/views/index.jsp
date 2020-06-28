<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>  
</head>
<body>
	<h1 align="center"> 
	<s:url namespace="/" action="produits" var="lien1" ></s:url>
	<s:a href="%{lien1}" > Gestion de Stock </s:a>	
 </h1>
<nav style="background-color:red" class="navbar navbar-expand-sm">  
  <!-- Brand/logo -->  
  <a class="navbar-brand" href="#">Logo</a>  
    
  <!-- Links -->  
  <ul class="navbar-nav">  
    <li class="nav-item">  
    <s:url namespace="/" action="produits" var="lien1" ></s:url>
    	<s:a class="nav-link" href="%{lien1}" > Produits </s:a>
    </li>  
    <li class="nav-item">  
      <a class="nav-link" href="#">Link 2</a>  
    </li>  
    <li class="nav-item">  
      <a class="nav-link" href="#">Link 3</a>  
    </li>  
  </ul>  
</nav>  
  
<div class="container-fluid">  
  <h3>Brand / Logo</h3>  
</div>  
</body>
</html>