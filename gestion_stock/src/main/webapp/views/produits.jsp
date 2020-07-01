<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produits</title>

<link rel="stylesheet" type="text/css" href="views/css/style.css"/>

    <!-- Bootstrap core CSS -->
    <link href="views/css/bootstrap.min.css" rel="stylesheet">

    <!-- Add custom CSS here -->
  
        <link href="views/css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- JavaScript -->
    <script src="views/js/jquery.js"></script>
    <script src="views/js/bootstrap.js"></script>
                <script src="views/js/jquery.dataTables.js"></script>
    
        <script src="views/js/dataTables.bootstrap.js"></script>
        
        <script type="text/javascript">
        $(document).ready(function() {
            $('#example').DataTable();
        } );

        </script>
        <style type="text/css">


        </style>
</head>
<body >
	<nav>
	<img style="width: 90px;height: 80px;position: absolute;top: 0;" align="middle" src="views/img/store.png" /> 
	<label class="logo">Gestion de stock</label>

	<ul>
	<s:url namespace="/" action="produits" var="lien1"/>
	<s:url namespace="/" action="appr" var="lien2"/>
		<li><s:a class="active" href="%{lien1}">Produits</s:a></li>
		<li><s:a href="%{lien2}">Approvisionnements</s:a></li>
	</ul>
	</nav>
<s:form action="add" >
<s:submit class="addBtn" value="Ajouter un produit"  />
</s:form>

<div style="width:90%;position: absolute;top:50%;left:50%;transform:translate(-50%,-50%)" >
<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th style="width: 15%" >Code produit</th>
                <th >Nom</th>
                <th>Description</th>
                <th >Prix</th>
                <th >Quantité</th>
 				<th style="width: 15%">Action</th>
              </tr>
        </thead>
  <s:iterator value="produits">
        
        <tbody>
       
				<tr>
					<td><s:property value="ref" /></td>
					<td><s:property value="des" /></td>
					<td><s:property value="desc" /></td>
					<td><s:property value="prix" /></td>
					<td><s:property value="qte" /></td>
					<s:url namespace="/" action="delete" var="lien1">
						<s:param name="ref">
							<s:property value="ref" />
						</s:param>
					</s:url>
					<s:url namespace="/" action="edit"  var="lien2">
						<s:param name="ref">
							<s:property value="ref" />
						</s:param>
					</s:url>
					
					<td> <s:a class="link" href="%{lien1}" > Supprimer </s:a> 
						<s:a class="link" href="%{lien2}" > Modifier</s:a> </td>
				</tr>
			
        </tbody>
        </s:iterator>
        </table>


</div>




















<!--  
	<div align="center">
		<h2>Ajouter un produit</h2>
		<s:form action="save" method="post">
			<s:textfield label="Code Produit" name="produit.ref"></s:textfield>
			<s:textfield label="Nom Produit" name="produit.des"></s:textfield>
			<s:textfield label="Prix Produit" name="produit.prix"></s:textfield>
			<s:textfield label="Quantité Produit" name="produit.qte"></s:textfield>
		<s:textarea label="Description Produit" name="produit.desc" length="255"></s:textarea>
			<s:hidden name="editMode"></s:hidden>
			<s:submit value="Enregistrer" />
		</s:form>
	</div>
	<div>
		<table class="table1">
		<tr>
<th>Code produit</th><th>Nom produit</th><th>Prix produit</th><th>Quantite produit</th><th>Description produit</th>
</tr>
			<s:iterator value="produits">
				<tr>
					<td><s:property value="ref" /></td>
					<td><s:property value="des" /></td>
					<td><s:property value="prix" /></td>
					<td><s:property value="qte" /></td>
					<td><s:property value="desc" /></td>
					<s:url namespace="/" action="delete" var="lien1">
						<s:param name="ref">
							<s:property value="ref" />
						</s:param>
					</s:url>
					<s:url namespace="/" action="edit"  var="lien2">
						<s:param name="ref">
							<s:property value="ref" />
						</s:param>
					</s:url>
					<td> <s:a href="%{lien1}" > Supprimer </s:a> </td>
					<td> <s:a href="%{lien2}" > Modifier</s:a> </td>
				</tr>
			</s:iterator>
		</table>
	</div>
	-->
</body>
</html>