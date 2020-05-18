
<!DOCTYPE html>
<html>
  <head>
    <!--<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1">-->
    <title>Dose and Timing Information</title>
    <!--<link rel="stylesheet" type="text/css" href="style2.css">-->
    <!--<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">-->
    <!--<style>
    .w3-button {width:150px;}
    </style>-->
      <style><%@include file="../styles/style2.css"%></style>
      <style><%@include file="../styles/bootstrap.min.css"%></style>

  </head>
  <body> 
        <div class="infobox">



                <h1 style="font-size:30px;">Dose/Timing Options</h1>
            <table class="table">

                <tbody>
                <tr>

                    <td>Fentanyl : </td>
                    <td><a>  Timing  </a>
                        <select>
                            <option value="5">5 min</option>
                            <option value="4">4 min</option>
                            <option value="3">3 min</option>
                        </select></td>
                </tr>
                <tr></tr>

                <tr>

                    <td></td>
                    <td><a>  Dose  </a><select>
                        <option value="25">25 mcgIV</option>
                        <option value="40">40 mcgIV</option>
                        <option value="50">50 mcgIV</option>
                    </select></td>

                </tr>
                <tr>

                    <td>Midazolam : </td>
                    <td><a>  Timing  </a>
                        <select>
                            <option value="2">2 min</option>
                            <option value="1">1 min</option>
                        </select></td>

                </tr>
                <tr></tr>
                <tr>

                    <td></td>
                    <td><a>  Dose  </a>
                        <select>
                            <option value="0.5">0.5 mcgIV</option>
                            <option value="1">1 mcgIV</option>
                            <option value="2">2 mcgIV</option>
                        </select></td>

                </tr>
                </tbody>
            </table>
                <%--<p>Fentanyl</p><br>--%>

                <%--<a>-timing</a>--%>
                <%--<select>--%>
                  <%--<option value="5">5 min</option>--%>
                  <%--<option value="4">4 min</option>--%>
                  <%--<option value="3">3 min</option>--%>
                <%--</select>--%>
                <%--<br>--%>
                <%--<br>--%>

                <%--<a>-Dose</a><br>--%>
                <%--<select>--%>
                  <%--<option value="25">25 mcgIV</option>--%>
                  <%--<option value="40">40 mcgIV</option>--%>
                  <%--<option value="50">50 mcgIV</option>--%>
                <%--</select>--%>
                <%--<br>--%>
                <%--<br>--%>

                <%--<p>Midazolam</p>--%>
                <%--<a>-timing</a>--%>
                <%--<select>--%>
                  <%--<option value="2">2 min</option>--%>
                  <%--<option value="1">1 min</option>--%>
                <%--</select>--%>
                <%--<br>--%>
                <%--<br>--%>

                <%--<a>-Dose</a>--%>
                <%--<select>--%>
                  <%--<option value="0.5">0.5 mcgIV</option>--%>
                  <%--<option value="1">1 mcgIV</option>--%>
                  <%--<option value="2">2 mcgIV</option>--%>
                <%--</select>   --%>
                <br>
                <br>
                <input type="button" value="Next" onclick="location.href='guidelines.jsp'" />
            </div>



        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script><%@include file="../scripts/bootstrap-sortable.js"%></script>
        <script><%@include file="../scripts/d3.v4.min.js"%></script>
        <script><%@include file="../scripts/plotly-latest.min.js"%></script>


  </body>

</html>
