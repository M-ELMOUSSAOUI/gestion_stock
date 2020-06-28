<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produits</title>
<link rel="stylesheet" type="text/css" href="views/css/style.css"/>

</head>
<body >
	<div align="center">
		<h2>Ajouter un produit</h2>
		<s:form action="save" method="post">
			<s:textfield label="Code Produit" name="produit.ref"></s:textfield>
			<s:textfield label="Nom Produit" name="produit.des"></s:textfield>
			<s:textfield label="Prix Produit" name="produit.prix"></s:textfield>
			<s:textfield label="Quantité Produit" name="produit.qte"></s:textfield>
			<s:hidden name="editMode"></s:hidden>
			<s:submit value="Enregistrer" />
		</s:form>
	</div>
	<div>
		<table class="table1">
		<tr>
<th>Code produit</th><th>Nom produit</th><th>Prix produit</th><th>Quantite produit</th>
</tr>
			<s:iterator value="produits">
				<tr>
					<td><s:property value="ref" /></td>
					<td><s:property value="des" /></td>
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
					<td> <s:a href="%{lien1}" > Supprimer </s:a> </td>
					<td> <s:a href="%{lien2}" > Modifier</s:a> </td>
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>