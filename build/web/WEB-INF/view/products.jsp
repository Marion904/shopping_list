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
    </head>
    <body>

        <table border="1">        
            
            <sql:query var="result" dataSource="jdbc/shopping_list" >
                SELECT id,name,description,quantity,un FROM PRODUCT
            </sql:query>

            <table border="1">
                <!-- column headers -->
                <thead>
                    <tr>
                        <th><c:out value="${result.columnNames[1]}"/>  </th>
                        <th><c:out value="${result.columnNames[2]}"/>  </th>
                        <th><c:out value="${result.columnNames[3]}"/>  </th>
                        <th><c:out value="${result.columnNames[4]}"/>  </th>
                        <th>+</th>
                        <th>-</th>
                        <td>modifier</td>
                        <th>Vider</th>
                    </tr>
                </thead>
                <!-- column data -->
                <tbody>
                        <c:forEach var="row" items="${result.rowsByIndex}"> 
                            <tr>                            
                                <td>
                                    <c:out value="${row[1]}"/>                                    
                                </td>  
                                <td>
                                    <c:out value="${row[2]}"/>                                    
                                </td>  
                                <td>
                                    <c:out value="${row[3]}"/>                                    
                                </td>  
                                <td>
                                    <c:out value="${row[4]}"/>                                    
                                </td>  
                                <td>
                                    <form action="addOne" method="get">
                                    <input type="hidden" name="productId" value="${row[0]}" readonly> 
                                    <input type="hidden" name="actual" value="${row[3]}" readonly> 
                                    <input type="hidden" name="sign" value="plus" readonly> 
                                    <input type="submit" name="plus" value="+">
                                    </form>
                                </td>  
                                <td>
                                   <form action="addOne" method="get">
                                    <input type="hidden" name="productId" value="${row[0]}" readonly> 
                                    <input type="hidden" name="actual" value="${row[3]}" readonly> 
                                    <input type="hidden" name="sign" value="less" readonly> 
                                    <input type="submit" name="less" value="-">
                                    </form>
                                </td>
                                <td>
                                    <form action="update" method="get">
                                    <input type="hidden" name="productID" value="${row[0]}"> 
                                    <input type="submit" name="update" value="Modifier">
                                    </form>
                                </td>
                                <td>
                                    <form action="addOne" method="post">
                                    <input type="hidden" name="productId" value="${row[0]}" readonly>  
                                    <input type="submit" name="delete" value="Supprimer">
                                    </form>
                                </td>                                      
                            </tr>
                        </c:forEach>
                    
                </tbody>
            </table>
    </body>
</html>
