<%-- 
    Document   : menu
    Created on : 22 août 2018, 21:54:37
    Author     : accueil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Menu</title>
    </head>
    <body><ul>
            <li><a href="<c:url value="/product"/>">Ajouter un produit</a></li>
            <li>Vider la liste</li>
        </ul>

        
    </body>
</html>
