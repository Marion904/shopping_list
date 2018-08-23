<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : products
    Created on : 22 août 2018, 22:15:09
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
        <title>Shopping list</title>
    <table border="1">        
        
        
        <sql:query var="result" dataSource="jdbc/shopping_list" >
            SELECT name,description,quantity,userId FROM PRODUCT
        </sql:query>
            
        <table border="1">
            <!-- column headers -->
            <thead>
                <tr>
                    <c:forEach var="columnName" items="${result.columnNames}">
                        <th><c:out value="${columnName}"/></th>
                    </c:forEach>
                    <th>+</th>
                    <th>-</th>
                    <th>Vider</th>
                </tr>
            </thead>
            <!-- column data -->
            <tbody>
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                    <td>+</td>
                    <td>-</td>
                    <td>Vider</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </head>
    <body>

    </body>
</html>
