<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table border="3px" cellspacing="0">
    <thead>
    <tr>
        <td>Date</td>
        <td>Description</td>
        <td>Calories</td>
        <td></td>
        <td></td>
    </tr>
    </thead>
    <tbody>
    <jsp:useBean id="mealTos" scope="request" type="java.util.List"/>
    <c:forEach var="meal" items="${mealTos}">
        <c:set var="color" scope="request" value="green"/>
        <c:if test="${meal.excess}">
            <c:set var="color" scope="request" value="red"/>
        </c:if>
        <tr style="color:${color};">
            <td>${meal.dateStr}</td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
            <td>Upload</td>
            <td>Download</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>