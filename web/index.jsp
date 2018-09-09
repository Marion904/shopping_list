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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
           <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="grid.css" rel="stylesheet">
        <title>Shopping_list</title>
    </head>
    <body>
        <div class="container">
            <h1>Parce qu'il faut bien manger</h1>

            <c:choose>
                <c:when test="${errorStatus}">
                    <c:import url="/WEB-INF/view/form.jsp"/>
                </c:when>
                <c:otherwise>
                    <c:choose>
                            <c:when test="${addedProduct}">
                               <c:import url="/WEB-INF/view/product.jsp"/>
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
                    <c:import url="/WEB-INF/menu/menu.jsp"/>    
                </c:otherwise>
            </c:choose>            
        </div>

    </body>
</html>
