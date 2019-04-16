<!--<%@ page contentType="text/html;charset=UTF-8" language="java" %>-->

<!--<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>-->

<!--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>-->


<html>


<head>

<link rel="stylesheet" href="style.css">

<title>Strong G³ówna</title>


</head>


<body>


<ul class="header">
<li id="logo-container"> <img src="logo.png"></li> 
<c:choose>
    
<c:when test="${empty userID}">
        
<li style="float:right"><a href="/user/login">Logowanie</a><br>
</li>        
<li style="float:right"><a href="/user/register">Rejestracja</a><br>
</c:when></li>
    
<c:otherwise>
        
<li style="float:right"><a href="/user/logout">Wyloguj</a>
</li>    
</c:otherwise>
</c:choose>
</ul>

<!--<style="float:right"><a class="active" href="#about"></style> aktywny przycisk-->

<h1>Witaj na stronie g³ównej</h1>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam. Quisque semper justo at risus. Donec venenatis, turpis vel hendrerit interdum, dui ligula ultricies purus, sed posuere libero dui id orci.</p>

<p>Nam congue, pede vitae dapibus aliquet, elit magna vulputate arcu, vel tempus metus leo non est. Etiam sit amet lectus quis est congue mollis. Phasellus congue lacus eget neque. Phasellus ornare, ante vitae consectetuer consequat, purus sapien ultricies dolor, et mollis pede metus eget nisi. Praesent sodales velit quis augue. Cras suscipit, urna at aliquam rhoncus, urna quam viverra nisi, in interdum massa nibh nec erat.</p>





</body>
</html>