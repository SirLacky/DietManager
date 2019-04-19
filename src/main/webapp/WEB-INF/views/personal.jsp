<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="type" uri="http://www.springframework.org/tags/form" %>

<html>
<head>

    <link rel="stylesheet" href="../../media/css/style.css">
    <title>Dane Personalne</title>

</head>

<body>

<ul class="header">
    <li id="logo-container"><img src="../../media/images/logo.png"></li>
    <li style="float:right"><a href="/logout">Wyloguj</a></li>
    <li style="float:right"><a href="/main" class="active">Menadżer Osobisty</a><br></li>
</ul>

<h1>Dodawanie i edycja danych personalnych: </h1>


<form:form method="post"  modelAttribute="personal" >
<form:errors path="*"/><br>
Waga w kilogramach: <form:input path="weight"/><br>
Wzrost w centymetrach: <form:input path="height"/><br>
Wiek w latach: <form:input path="age"/><br>
Płeć:<br>
Kobieta:<form:radiobutton path="gender" value="K"/><br>
Mężczyzna:<form:radiobutton path="gender" value="M"/><br>
Poziom aktywności fizycznej:<br>
    <form:select path="activity">
        <form:option value="1.2">Osoba chora leżąca w łóżku</form:option>
        <form:option value="1.25">Bardzo niska, pracownik biurowy, brak aktywności poza obowiązkami domowymi</form:option>
        <form:option value="1.5">Niska, pracownik biurowy prowadzący treningi kilka razy w tygodniu</form:option>
        <form:option value="1.75">Średnia, pracownik fizyczny lub osoba prowadząca aktywny tryb życia</form:option>
        <form:option value="2.0">Wysoki, sportowiec lub osoba uprawiająca ciężką pracę fizyczną</form:option>
    </form:select>
    <button type="submit">Wyślij</button>
</form:form>

</body>
</html>