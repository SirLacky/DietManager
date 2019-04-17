<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <link rel="stylesheet" href="../../media/css/style.css">
    <title>Edycja</title>
</head>
<body>
<ul class="header">
    <li id="logo-container"><img src="../../media/images/logo.png"></li>
    <li style="float:right"><a href="/logout">Wyloguj</a></li>
    <li style="float:right"><a href="/main" class="active">Podsumowanie</a><br></li>
</ul>

<h1>Wybierz produkt lub posiłek do edycji: </h1>

<form method="post">
    <select>
        <option value="code">Produkt z Bazy</option>
    </select>
    <br>
    <button class="button">Dalej</button>
</form>

</body>
</html>