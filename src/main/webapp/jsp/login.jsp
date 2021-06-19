<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Log in with your account</title>
    <link type="text/css" href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="https://getbootstrap.com/docs/4.1/examples/sign-in/signin.css" rel="stylesheet">	
</head>

<body  class="text-center">

<form method="POST" action="${contextPath}/login" class="form-signin">
      
 
            
            <h1 class="h3 mb-3 font-weight-normal">Log in</h1>
            <label for="inputEmail" class="sr-only">Username</label>
            <input name="username" style="border-bottom-right-radius: 0; border-bottom-left-radius: 0;margin-bottom: -1px;" type="text" class="form-control" placeholder="Username" required
                   autofocus>
            <label for="password" class="sr-only">Password</label>
            <input name="password" id="inputPassword" type="password" class="form-control" placeholder="Password" required>
            
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <div class="checkbox mb-3">
            <span style="color: red; font-size: 12px;">${error}</span>
            <c:if test="${param.logout != null }">
                <i> You have been logged out successfully! </i>
            </c:if>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
 
            <p class="mb-3 text-muted" style="margin-top:12px;"><a href="${contextPath}/registration">Create an account</a></p>
            
  

    </form>

<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>
