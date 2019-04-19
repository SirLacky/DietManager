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
    <c:forEach items="${product}" var="product">
        <h3>PRODUKT: ${product.id}</h3>
        <ul>
           Kalorie: <c:out value="${product.calories}"/>
        </ul>
    </c:forEach>
</div>
<br>
<h3>Podaj ile zjadłeś</h3>
<input type="tekst" name="howMuch">[g/ml]<br><br>
<button type="submit">Dodaj Produkt</button>
</form>

</body>
</html>