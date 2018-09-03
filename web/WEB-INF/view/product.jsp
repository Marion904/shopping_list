<%-- 
    Document   : product
    Created on : 25 août 2018, 16:46:30
    Author     : accueil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Produit ajouté</title>
    </head>
    <body>
        <sql:update var="result" dataSource="jdbc/shopping_list">
         INSERT INTO PRODUCT (name, description, quantity,category,userId,un)
         VALUES ("${product.name}","${product.description}",${product.quantity},"${product.category}",${user},"${product.unit}");
        </sql:update>
         <table>
            <tr>
                <th>Dernier ajout : </th>
                <th colspan="2">${product.name}</th>
            </tr>
            <tr>
                <td><strong>Categorie </strong></td>
                <td colspan="2"><span class="description">${product.category}</span></td>
            </tr>
            <tr>
                <td><strong>Description: </strong></td>
                <td colspan="2"><strong>${product.description}</strong>

            </tr>
            <tr>
                <td><strong>Quantité désirée: </strong></td>
                <td><strong>${product.quantity}</strong>
                <td><strong>${product.unit}</strong>
            </tr>
        </table>
        
    </body>
</html>
