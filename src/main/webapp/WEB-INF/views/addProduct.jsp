<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <link rel="stylesheet" href="../../media/css/style.css">
    <title>Dodawanie Produktu</title>
</head>
<body>


<ul class="header">
    <li id="logo-container"><img src="../../media/images/logo.png"></li>
    <li style="float:right"><a href="/logout">Wyloguj</a></li>
    <li style="float:right"><a href="/main" class="active">Menadżer Osobisty</a><br></li>
</ul>


<h1>Dodawanie Posiłku: </h1>

<form:form modelAttribute="addProductForm" method="post">
    <form:errors path="*"/><br>
    Kod Kreskowy: <form:input path="code"/><br>
    Nazwa Produktu: <form:input path="name"/><br>
    Kalorie: <form:input path="calories"/>[kcal]<br>
    Białko: <form:input path="whey"/>[g]<br>
    Węglowodany: <form:input path="carbs"/>[g]<br>
    Tłuszcz: <form:input path="fat"/>[g]<br>
    Gramatura: <form:input path="volume"/>[g/ml/sztuki]<br>
    <button type="submit">Wyślij</button>
</form:form>


</body>
</html>