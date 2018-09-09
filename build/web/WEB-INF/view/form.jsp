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
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
           <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">

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
                <input type="number" name="quantity" value="0">
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
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
