<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <link rel="stylesheet" href="../../media/css/style.css">
    <title>Znaleziono Produkt</title>
</head>
<body>
<ul class="header">
    <li id="logo-container"><img src="../../media/images/logo.png"></li>
    <li style="float:right"><a href="/logout">Wyloguj</a></li>
    <li style="float:right"><a href="/main" class="active">Menadżer Osobisty</a><br></li>
</ul>

<h1>Podsumowanie: </h1>

<div class="container">
        <h3><b>PRODUKT DO DODANIA:</b><c:out value="${product.name}"/></h3>
        <ul>
            <li><b>Kalorie:</b><c:out value="${product.calories}"/></li><br>
            <li><b>Węglowodany:</b><c:out value="${product.carbs}"/></li><br>
            <li><b>Tłuszcz:</b><c:out value="${product.fat}"/></li><br>
            <li><b>Białko:</b><c:out value="${product.whey}"/></li><br>
        </ul>
</div>
<br>
<h3>Podaj ile zjadłeś</h3>

<form:form modelAttribute="productDetails" method="post" action="/foundProduct">
    <form:hidden path="product.id" value="${product.id}"/>
    <form:errors path="*"/>
    <form:input path="howMuch"/><br>
    <button type="submit">Dodaj produkt</button>
</form:form>
</body>
</html>

