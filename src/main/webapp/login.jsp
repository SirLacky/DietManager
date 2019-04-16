<!--<%@ page contentType="text/html;charset=UTF-8" language="java" %>-->

<!--<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>-->

<!--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>-->


<html>


<head>

<link rel="stylesheet" href="style.css">

<title>Logowanie</title>


</head>


<body>


<ul class="header">
<li id="logo-container"> <img src="logo.png"></li> 
<c:choose>
    
<c:when test="${empty userID}">
        
<li style="float:right"><a class="active" href="/user/login">Logowanie</a><br>
</li>        
<li style="float:right"><a  href="/user/register">Rejestracja</a><br>
</c:when></li>
    
<c:otherwise>
        
<li style="float:right"><a href="/user/logout">Wyloguj</a>
</li>    
</c:otherwise>
</c:choose>




</ul>

<h1>Logowanie: </h1>


<form method="post">


Adres e-mail: <input type:"text" name="email" placeholder="mail@mail.pl"><br>
<br>
Has³o: <input type:"text" name="password" placeholder="Has³o"><br>
<br>
<button>Zaloguj</button>

</form>



</body>
</html>