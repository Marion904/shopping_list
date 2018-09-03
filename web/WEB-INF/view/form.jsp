<%-- 
    Document   : form
    Created on : 22 août 2018, 22:43:58
    Author     : accueil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Formulaire d'ajout de produit</title>
    </head>
    <body>
        <h1>Que veux-tu ajouter?</h1>
        <fieldset>
            <form action="product" method="POST">
                <label>Catégorie</label>
                <input type="text" name="category" value="${form['catégorie']}">
                <label>Produit</label>
                <input type="text" name="product" class="requis" value="${form['produit']}"><span class="error">${errors['product']}</span>
                <label>Description</label>
                <textarea name="description" rows="5" cols="40" value="${form['description']}"></textarea>
                <label>Quantité</label>
                <input type="number" name="quantity" class="requis" value="${form['quantité']}">
                 <select name="unit">
                    <option value="${form['g']}">g.</option>
                    <option value="${form['kg']}">kg</option>
                    <option value="${form['unité']}">unité</option>
                    <option value="${form['l']}">l</option>
                    <option value="${form['dl']}">dl</option>
                    <option value="${form['cl']}">cl</option>
                    <option value="${form['ml']}">ml</option>
                    <option value="${form['sachet']}">sachet</option>
                  </select> 
                <input type="submit" value="Ajouter" name="submit">
            </form>    
        </fieldset>
        
        <a href="<c:url value="/cancel"/>">Annuler et retourner à la liste de course</a>
    </body>
</html>
