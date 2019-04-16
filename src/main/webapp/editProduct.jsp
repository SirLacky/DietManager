<!--<%@ page contentType="text/html;charset=UTF-8" language="java" %>-->

<!--<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>-->

<!--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>-->


<html>


<head>

<link rel="stylesheet" href="media/css/style.css">

<title>Edycja Produktu</title>


</head>


<body>


<ul class="header">
<li id="logo-container"> <img src="media/images/logo.png"></li>
<li style="float:right"><a href="/logout">Wyloguj</a>
</li>
<li style="float:right"><a href="/main" class="active">Podsumowanie</a><br>
</li>
      
</ul>



<h1>Educja produktu: </h1>

<form method="post">




Kod Produktu: <input type="text" name="productCode"><br><br>
Nazwa Produktu: <input type="text" name="productName"><br><br>
Kalorie: <input type="text" name="kcal">[kcal]<br><br>
Bia�ko: <input type="text" name="whey">[g]<br><br>
W�glowodany: <input type="text" name="carbo">[g]<br><br>
T�uszcz: <input type="text" name="fat">[g]<br><br>
Gramatura: <input type="text" name="howMuch">[g/ml/sztuki]<br><br>
<button>Dalej</button>
</form>



</body>
</html>