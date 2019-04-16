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
    <li style="float:right"><a href="/logout">Wyloguj</a></li>
    <li style="float:right"><a href="/main" class="active">Podsumowanie</a><br></li>

</ul>

<h1>Rejestracja: </h1>

<form:form modelAttribute="registrationForm" method="post">
    <form:errors path="*"/><br>
    Nazwa użytkownika: <form:input path="username"/><br>
    Imię: <form:input path="firstName"/><br>
    Nazwisko: <form:input path="lastName"/><br>
    Hasło: <form:input path="password"/><br>
    Powrórz hasło: <form:input path="confirmedPassword"/><br>
    <button type="submit">Wyślij</button>

</form:form>

</body>
</html>
