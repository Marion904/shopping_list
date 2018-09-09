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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Form to add a product</title>

    <!-- Bootstrap core CSS -->
    <link href="../../../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="floating-labels.css" rel="stylesheet">
  </head>

  <body>
      <div class="container">
        <a href="<c:url value="/cancel"/>">
            <button  class="btn btn-lg btn-block btn-outline-primary" >Annuler et retourner à la liste de course</button>
        </a>

        <form class="form-signin" action="product" method="POST">
          <div class="text-center mb-4">
            <img class="mb-4" src="../../assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Que veux-tu ajouter?</h1>

          </div>
          <p>Catégorie</p>
          <div class="form-label-group">
                    <input type="text" name="category" class="form-control" value="${form['catégorie']}">
          </div>
            <p>Produit</p>
          <div class="form-label-group">
                    <input type="text" name="product" class="requis" class="form-control" value="${form['produit']}"><span class="error">${errors['product']}</span>
          </div>
          <p>Description</p>
          <div class="form-label-group">
                    <textarea name="description" rows="5" cols="40" class="form-control" value="${form['description']}"></textarea>
          </div>
          <p>Quantité</p>
          <div class="form-label-group">
                    <input type="number" name="quantity"  class="form-control" value="0">

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
           </div>

        <div class="form-label-group">
             <input type="submit" class="btn btn-lg btn-primary btn-block"  value="Ajouter" name="submit">
        </div>

        </form>        
     </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>
