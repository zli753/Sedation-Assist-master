<!DOCTYPE html>
<html>
  <head>
    <title>Lookup</title>
    <link type="text/css" href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="https://getbootstrap.com/docs/4.1/examples/sign-in/signin.css" rel="stylesheet">	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body> 
  <div class="container"> 
	<form method="POST" action="${contextPath}/patientinfo" class="form-signin">
	  <div class="form-group">
	    <label for="patientID">Please Enter Patient ID:</label>
	    <input name="patientID" id="patientID" type="text" class="form-control" required>
	    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	  </div>
	  <button type="submit" class="btn btn-primary">Search</button>
	</form>
	</div>
  </body>
</html>