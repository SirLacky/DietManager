<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="type" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <link rel="stylesheet" href="style.css">
    <title>Rejestracja</title>
</head>
<body>


<ul class="header">
    <li id="logo-container"><img src="logo.png"></li>
    <c:choose>

        <c:when test="${empty userID}">

            <li style="float:right"><a href="/user/login">Logowanie</a><br>
            </li>
            <li style="float:right"><a class="active" href="/user/register">Rejestracja</a><br>
        </c:when></li>

        <c:otherwise>

            <li style="float:right"><a href="/user/logout">Wyloguj</a>
            </li>
        </c:otherwise>
    </c:choose>


</ul>


<h1>Rejestracja: </h1>

<form:form modelAttribute="registrationForm" method="post">
    <form:errors path="*"/><br>
    Nazwa użytkownika: <form:input path="userName"/><br>
    Imię: <form:input path="firstName"/><br>
    Nazwisko: <form:input path="lastName"/><br>
    Hasło: <form:input path="password"/><br>
    Powrórz hasło: <form:input path="confirm"/><br>
<button>Wyślij</button>

</form:form>
<form method="post">

    Imię: <input type:type:"text" name="firstName" placeholder="Imi�"><br>
    <br>
    Nazwisko: <input type:"text" name="lastName" placeholder="Nazwisko"><br>
    <br>
    Adres e-mail: <input type:"text" name="email" placeholder="mail@mail.pl"><br>
    <br>
    Has�o: <input type:"text" name="password" placeholder="Has�o"><br>
    <br>
    <input type="checkbox" name="understand"> Zgoda na przetwarzanie danych RODO<br>
    <br>
    <button>Zarejestruj</button>
</form>


</body>
</html>
