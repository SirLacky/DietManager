<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="type" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../media/css/style.css">
    <title>Rejestracja</title>
</head>
<body>

<ul class="header">
    <li id="logo-container"><img src="../../media/images/logo.png"></li>
    <li style="float:right"><a href="/author">O Autorze</a> </li>
    <li style="float:right"><a href="/login">Logowanie</a> </li>
    <li style="float:right"><a href="/register" class="active">Rejestracja </a></li>
    <li style="float:right"><a href="/homepage">O Aplikacji</a> </li>
</ul>

<h1>Rejestracja: </h1>

<form:form modelAttribute="registrationForm" method="post">
    <form:errors path="*"/><br>
    Nazwa użytkownika: <form:input path="username"/><br>
    Imię: <form:input path="firstName"/><br>
    Nazwisko: <form:input path="lastName"/><br>
    Hasło: <form:password path="password"/><br>
    Powrórz hasło: <form:password path="confirmedPassword"/><br>
    <button type="submit">Wyślij</button>

</form:form>

</body>
</html>
