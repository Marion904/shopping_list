<%-- 
    Document   : index
    Created on : 22 août 2018, 21:50:20
    Author     : accueil
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Shopping List</title>

    <!-- Bootstrap core CSS -->
    <link href="../../../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="floating-labels.css" rel="stylesheet">
    </head>
    <body>
        <h1>Parce qu'il faut bien manger</h1>
        
        <c:choose>
            <c:when test="${errorStatus}">
                <c:import url="/WEB-INF/view/form.jsp"/>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${addedProduct}">
                        <sql:update var="result" dataSource="jdbc/shopping_list">
         INSERT INTO PRODUCT (name, description, quantity,category,userId,un)
         VALUES ("${product.name}","${product.description}",${product.quantity},"${product.category}",${user},"${product.unit}");
        </sql:update>
         

                           <br>
                       </c:when>   
                  
                </c:choose>
            <c:choose>
            <c:when test="${newQty}">
                <sql:update var="result" dataSource="jdbc/shopping_list" >
                    UPDATE PRODUCT 
                    SET quantity = "${quantity}"
                    WHERE id ="${productId}"
                </sql:update>
            </c:when>
                    
            <c:when test="${delete}">
                <sql:update var="result" dataSource="jdbc/shopping_list" >
                    DELETE FROM PRODUCT 
                    WHERE id ="${productId}"
                </sql:update>
            </c:when>    
                    
                    
        </c:choose>
                <c:import url="/WEB-INF/view/products.jsp"/>
                <br>
                <c:import url="/WEB-INF/menu/menu.jsp"/>    
            </c:otherwise>
        </c:choose>
                    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
