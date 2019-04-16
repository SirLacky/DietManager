<!--<%@ page contentType="text/html;charset=UTF-8" language="java" %>-->

<!--<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>-->

<!--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>-->


<html>


<head>

<link rel="stylesheet" href="media/css/style.css">

<title>Znaleziono Produkt</title>


</head>


<body>


<ul class="header">
<li id="logo-container"> <img src="media/images/logo.png"></li>
<li style="float:right"><a href="/logout">Wyloguj</a>
</li>
<li style="float:right"><a href="/main" class="active">Podsumowanie</a><br>
</li>
      
</ul>

<!--<a class="active" aktywny przycisk-->

<h1>Podsumowanie: </h1>

<div class="boxes">
<form method="get">
<div>
<h2>Produkt kod/id: test</h2>
<ul>
<li>kcal: <b>test</b> [kcal]</li>
<li>Bia�ko: <b>test</b> [g]</li>
<li>T�uszcz: <b>test</b> [g]</li>
<li>W�glowodany: <b>test</b> [g]</li>
</ul></div>
</form>
<br>
<h3>Podaj ile zjad�e�</h3>
<input type="tekst" value="howMuch">[g/ml]<br><br>
<button>Dodaj Produkt</button>
</form>



</body>
</html>