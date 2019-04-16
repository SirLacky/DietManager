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
    <form method="get">
        <div>
            <h2>Produkt kod/id: test</h2>
            <ul>
                <li>Kalorie: <b>test</b> [kcal]</li>
                <li>Białko: <b>test</b> [g]</li>
                <li>Tłuszcz: <b>test</b> [g]</li>
                <li>Węglowodany: <b>test</b> [g]</li>
            </ul>
        </div>
    </form>
</div>
<br>
<h3>Podaj ile zjadłeś</h3>
<input type="tekst" name="howMuch">[g/ml]<br><br>
<button type="submit">Dodaj Produkt</button>
</form>

</body>
</html>