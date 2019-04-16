<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../media/css/style.css">
    <title>Logowanie</title>
</head>
<body>

<ul class="header">
    <li id="logo-container"><img src="../../media/images/logo.png"></li>
    <li style="float:right"><a href="/author">O Autorze</a> </li>
    <li style="float:right"><a href="/login" class="active">Logowanie</a> </li>
    <li style="float:right"><a href="/register">Rejestracja </a></li>
    <li style="float:right"><a href="/homepage">O Aplikacji</a> </li>
</ul>

<h1>Logowanie: </h1>

<form method="post" action="/login">
    <c:if test="${param.error !=null}">
        <span>Nieprawidłowe dane logowania!</span>
    </c:if>
    <c:if test="${param.logout !=null}">
        <span>Zostałeś wylogowany</span>
    </c:if>
    Nazwa użytkownika: <input type="text" name="username" required min="3" max="20"/><br>
    Hasło: <input type="password" name="password" required min="3" max="20"/><br>
    Czy zapamiętać? <input type="checkbox" name="remember-me"/><br>
    <button type="submit">Zaloguj</button>
</form>


</body>
</html>