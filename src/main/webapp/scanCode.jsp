<!--<%@ page contentType="text/html;charset=UTF-8" language="java" %>-->

<!--<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>-->

<!--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>-->


<html>


<head>

<link rel="stylesheet" href="style.css">

<title>Skanowanie kodu</title>


</head>


<body>


<ul class="header">
<li id="logo-container"> <img src="logo.png"></li>
<li style="float:right"><a href="/logout">Wyloguj</a>
</li>
<li style="float:right"><a href="/main" class="active">Podsumowanie</a><br>
</li>
      
</ul>

<!--<a class="active" aktywny przycisk-->

<h1>Zeskanuj kod kreskowy lub wpisz rêcznie: </h1>

<form method="post">
<input type="text" name="code">
<br>
<button class="button">Dalej</button>
</form>



</body>
</html>