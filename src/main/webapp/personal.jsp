<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="type" uri="http://www.springframework.org/tags/form" %>


<html>


<head>

    <link rel="stylesheet" href="media/css/style.css">

    <title>Dane Personalne</title>


</head>


<body>


<ul class="header">
    <li id="logo-container"><img src="media/images/logo.png"></li>
    <li style="float:right"><a href="/logout">Wyloguj</a>
    </li>
    <li style="float:right"><a href="/main" class="active">Podsumowanie</a><br>
    </li>

</ul>


<h1>Dodawanie i edycja danych personalnych: </h1>

<form method="post">

    Waga w kilogramach: <input type:"text" name="mass" placeholder="100"> kg<br>
    <br>
    Wzrost w centymetrach: <input type:"text" name="hight" placeholder="170"> cm<br>
    <br>
    Wiek w latach: <input type:"text" name="age" placeholder="30"> lat</input><br>
    <br>
    P�e�:<br>
    Kobieta: <input type="radio" name="gender" value="Kobieta"><br>
    M�czyzna: <input type="radio" name="gender" value="M�czyzna"><br>
    <br>
    Poziom aktywno�ci fizycznej:<br>
    <select>
        <option value="1.2">Osoba chora le��ca w ��ku</option>
        <option value="1.25">Bardzo niska, pracownik biurowy, brak aktywno�ci poza obowi�zkami domowymi</option>
        <option value="1.5">Niska, pracownik biurowy prowadz�cy treningi kilka razy w tygodniu</option>
        <option value="1.75">�rednia, pracownik fizyczny lub osoba prowadz�ca aktywny tryb �ycia</option>
        <option value="2.0">Wysoki, sportowiec lub osoba uprawiaj�ca ci�k� prac� fizyczn�</option>
    </select><br>
    <button>Zapisz</button>
</form>


</body>
</html>