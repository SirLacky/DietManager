<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../media/css/style.css">
    <title>Menadżer Osobisty</title>
</head>
<body>


<ul class="header">
    <li id="logo-container"><img src="../../media/images/logo.png"></li>
    <li style="float:right"><a href="/logout">Wyloguj</a></li>
    <li style="float:right"><a href="/main" class="active">Menadżer Osobisty</a><br></li>

</ul>

<h1>To twoja osobista strona główna! </h1><br>
<h2>Wybierz akcję:</h2>

<button class="button" onclick="javascript:document.location.href='/personal'">Dodaj/Edytuj dane personalne</button>
<button class="button" onclick="javascript:document.location.href='/scanCode'">Dodaj produkt skanując kod kreskowy</button>
<button class="button" onclick="javascript:document.location.href='/addExisting'">Dodaj produkt już wprowadzony do bazy</button>
<button class="button" onclick="javascript:document.location.href='/addProduct'">Dodaj posiłek</button>
<button class="button" onclick="javascript:document.location.href='/chooseToEdit'">Edytuj dane produktów/posiłków</button>

<h2>Twoje dane żywnościowe:</h2>

<div class="container">
    <div class="boxes">
        <h3>Całkowite zapotrzebowanie:</h3>
        <form method="get">
            <div>
                <ul>
                    <li>PPM: <b>test</b> [kcal]</li>
                    <li>CPM: <b>test</b> [kcal]</li>
                    <li>Białko: <b>test</b> [g]</li>
                    <li>Tłuszcz: <b>test</b> [g]</li>
                    <li>WW: <b>test</b> [g]</li>
                </ul>
            </div>
        </form>

    </div>
    <div class="boxes">
        <h3>Dzisiaj zjedzono:</h3>
        <form method="get">
            <div>
                <ul>
                    <li>PPM: <b>test</b> [kcal]</li>
                    <li>CPM: <b>test</b> [kcal]</li>
                    <li>Białko: <b>test</b> [g]</li>
                    <li>Tłuszcz: <b>test</b> [g]</li>
                    <li>WW: <b>test</b> [g]</li>
                </ul>
            </div>
        </form>

    </div>
    <div class="boxes">
        <h3>Pozostało do zjedzenia:</h3>
        <form method="get">
            <div>
                <ul>
                    <li>PPM: <b>test</b> [kcal]</li>
                    <li>CPM: <b>test</b> [kcal]</li>
                    <li>Białko: <b>test</b> [g]</li>
                    <li>Tłuszcz: <b>test</b> [g]</li>
                    <li>WW: <b>test</b> [g]</li>
                </ul>
            </div>
        </form>

    </div>
</div>


</body>
</html>