<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>Ajouter des produits</h2>
		<s:form action="save" method="post">
			<s:textfield label="REF" name="produit.ref"></s:textfield>
			<s:textfield label="Désignaiton" name="produit.des"></s:textfield>
			<s:textfield label="Prix" name="produit.prix"></s:textfield>
			<s:textfield label="Quantité" name="produit.qte"></s:textfield>
			<s:submit value="save" />
		</s:form>
	</div>
	<div>
		<table>
			<tr>
				<th>Ref</th>
				<th>designation</th>
				<th>quantité</th>
				<th>prix</th>
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
					<td> <s:a href="%{lien2}" > edit </s:a> </td>
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>