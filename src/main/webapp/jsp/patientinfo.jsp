
<!DOCTYPE html>
<html>
  <head>
   <!-- <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1">-->
    <title>Patient Information</title>
    <link rel="stylesheet" type="text/css" href="./assets/style2.css">
    <link rel="stylesheet" type="text/css" href="./assets/bootstrap.min.css">

  </head>
  <body>
    <div class="infobox">

    <h1>Patient Information</h1>
    <div class="container-fluid">
      <form class="form-group">
        <div class="row">
          <div class="col-md-2">
            <label>First Name: </label>
          </div>
          <div class="col-md-3">
            <input type="text" placeholder="John" name="firstName" required>
          </div>
          <div class="col-md-2">
            <label>Last Name: </label>
          </div>
          <div class="col-md-3">
            <input type="text" placeholder="Smith" name="lastName" required>
          </div>
        </div>
        <div class="row">
          <div class="col-md-1">
            <label for="id">ID:</label>
          </div>
          <div class="col-md-4">
            <input id="id" type="id" name="patientID" placeholder="patient ID" required>
          </div>

        </div>
        <div class="row">
          <div class="col-md-1">
            <label for="male">Male</label>
          </div>
          <div class="col-md-2">
            <input id="male" type="radio" name="gender" value="male">
          </div>
          <div class="col-md-1">
            <label>Female</label>
          </div>
          <div class="col-md-2">
            <input type="radio" name="gender" value="female">
          </div>
          <div class="col-md-1">
            <label>Other</label>
          </div>
          <div class="col-md-2">
            <input type="radio" name="gender" value="other">
          </div>
        </div>
        <div>
          <label>
            Birthday:
            <select name="Month" id = "allMonth"></select>
            <select name="Day">
              <option>Day</option>
              <option>01</option>
              <option>02</option>
              <option>03</option>
              <option>04</option>
              <option>05</option>
              <option>06</option>
              <option>07</option>
              <option>08</option>
              <option>09</option>
              <option>10</option>
              <option>11</option>
              <option>12</option>
              <option>13</option>
              <option>14</option>
              <option>15</option>
              <option>16</option>
              <option>17</option>
              <option>18</option>
              <option>19</option>
              <option>20</option>
              <option>21</option>
              <option>22</option>
              <option>23</option>
              <option>24</option>
              <option>25</option>
              <option>26</option>
              <option>27</option>
              <option>28</option>
              <option>29</option>
              <option>30</option>
              <option>31</option>
            </select>
            <select name="Year">
              <option>Year</option>
              <option>1910</option>
              <option>1911</option>
              <option>1912</option>
              <option>1913</option>
              <option>1914</option>
              <option>1915</option>
              <option>1916</option>
              <option>1917</option>
              <option>1918</option>
              <option>1919</option>
              <option>1920</option>
              <option>1921</option>
              <option>1922</option>
              <option>1923</option>
              <option>1924</option>
              <option>1925</option>
              <option>1926</option>
              <option>1927</option>
              <option>1928</option>
              <option>1929</option>
              <option>1930</option>
              <option>1931</option>
              <option>1932</option>
              <option>1933</option>
              <option>1934</option>
              <option>1935</option>
              <option>1936</option>
              <option>1937</option>
              <option>1938</option>
              <option>1939</option>
              <option>1940</option>
              <option>1941</option>
              <option>1942</option>
              <option>1943</option>
              <option>1944</option>
              <option>1945</option>
              <option>1946</option>
              <option>1947</option>
              <option>1948</option>
              <option>1949</option>
              <option>1950</option>
              <option>1951</option>
              <option>1952</option>
              <option>1953</option>
              <option>1954</option>
              <option>1955</option>
              <option>1956</option>
              <option>1957</option>
              <option>1958</option>
              <option>1959</option>
              <option>1960</option>
              <option>1961</option>
              <option>1962</option>
              <option>1963</option>
              <option>1964</option>
              <option>1965</option>
              <option>1966</option>
              <option>1967</option>
              <option>1968</option>
              <option>1969</option>
              <option>1970</option>
              <option>1971</option>
              <option>1972</option>
              <option>1973</option>
              <option>1974</option>
              <option>1975</option>
              <option>1976</option>
              <option>1977</option>
              <option>1978</option>
              <option>1979</option>
              <option>1980</option>
              <option>1981</option>
              <option>1982</option>
              <option>1983</option>
              <option>1984</option>
              <option>1985</option>
              <option>1986</option>
              <option>1987</option>
              <option>1988</option>
              <option>1989</option>
              <option>1990</option>
              <option>1991</option>
              <option>1992</option>
              <option>1993</option>
              <option>1994</option>
              <option>1995</option>
              <option>1996</option>
              <option>1997</option>
              <option>1998</option>
              <option>1999</option>
              <option>2000</option>
              <option>2001</option>
              <option>2002</option>
              <option>2003</option>
              <option>2004</option>
              <option>2005</option>
              <option>2006</option>
              <option>2007</option>
              <option>2008</option>
              <option>2009</option>
              <option>2010</option>
              <option>2011</option>
              <option>2012</option>
              <option>2013</option>
              <option>2014</option>
              <option>2015</option>
              <option>2016</option>
              <option>2017</option>
              <option>2018</option>
            </select>
          </label>
        </div>
        <div>
          <label>
            Height:
            <select name ="feet">
              <option>ft</option>
              <option>0</option>
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
              <option>6</option>
              <option>7</option>
              <option>8</option>
              <option>9</option>
            </select>
            <select name="inch">
              <option>inch</option>
              <option>0</option>
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
              <option>6</option>
              <option>7</option>
              <option>8</option>
              <option>9</option>
              <option>10</option>
              <option>11</option>
            </select>
          </label>
        </div>

        <div class="row">
          <div class="col-md-3">
            <label for="weight">Weight: </label>
          </div>
          <div class="col-md-4">
            <input id="weight" type="weight" name="weight" placeholder="patient weight" required>
          </div>
          <div class="col-md-1">
            <label>lbs</label>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3">
            <label for="bloodpressure">Blood Pressure: </label>
          </div>
          <div class="col-md-4">
            <input id="bloodpressure" type="bloodpressure" name="bloodpressure" placeholder="blood pressure" required>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3">
            <label for="BMI">BMI: </label>
          </div>
          <div class="col-md-4">
            <input id="BMI" type="BMI" name="BMI" placeholder="BMI" required>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            Tobacco
          </div>
          <div class="col-md-4">
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="tobacco" value="yes">
              <label class="form-check-label">Yes</label>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="tobacco" value="no">
              <label class="form-check-label">No</label>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            Benzodiazephi Use
          </div>
          <div class="col-md-4">
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="benz" value="yes">
              <label class="form-check-label">Yes</label>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="benz" value="no">
              <label class="form-check-label">No</label>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            Opiod Use
          </div>
          <div class="col-md-4">
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="opiod" value="yes">
              <label class="form-check-label">Yes</label>

            </div>
          </div>
          <div class="col-md-4">
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="opiod" value="no">
              <label class="form-check-label">No</label>
            </div>
          </div>
        </div>

      </form>

      <div class="row">
        <div class="col-md-4">
          <button id="next" onclick="location.href='../jsp/dose.jsp'" class="btn btn-success float-left" type="button">
            Start Evaluation
          </button>
        </div>
        <div class="col-md-4">
          <div class="form-check form-check-inline">
            <label class="form-check-label">Scope Score </label>
            <input type="text" placeholder="0" name="scopescore" required>
          </div>
        </div>
        <div class="col-md-4">
          <div class="form-check form-check-inline">
            <label class="form-check-label">ASA level</label>
            <input type="text" placeholder="I" name="asalevel" required>
          </div>
        </div>
      </div>

    </div>
    </div>
    <div>
      <script>
	      function getMonth(){
		      var allMonths = ['Month','Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
		      select = document.getElementById("allMonth");
		
			  for (var i = 0; i<allMonths.length; i++){
			      var opt = document.createElement('option');
			      opt.value = allMonths[i];
			      opt.innerHTML = allMonths[i];
			      select.appendChild(opt);
			  }
		  }
		  getMonth();
	  
           function process()
           {
             //getting all the information from the textboxes
             var hisage=document.getElementById("myage").value;
             var hisage_value=0;
             var hisgender=document.getElementById("mygender").value;
             var hisgender_value=0;
             var hisbmi=document.getElementById("mygender").value;
             var hisbmi_value=0;
             var histobacco=document.getElementsByName("tobacco");
             var histobacco_value=0;
             var hisbenz=document.getElementsByName("benzodiazepine");
             var hisbenz_value=0;
             var hisopioid=document.getElementsByName("opioid");
             var hisopioid_value=0;
             var hispsy=document.getElementsByName("psychoactive");
             var hispsy_value=0;
             //define the final score and level
             var totalscore=0;
             var asalevel="";
             //score system 
             if (hisage>18 && hisage<=39){
		            hisage_value=10;
            	} else if (hisage>=40 && hisage<=49){
                hisage_value=6;
              } else if (hisage>=50 && hisage<=59){
                hisage_value=4;
              } else if (hisage>60){
                hisage_value=0;
              }

              if (hisgender=="Female"){
	            	hisgender_value=3;
	            }

              if (hisbmi<25){
	            	hisbmi_value=2;
	            }

              if (hisbenz[0].checked == true){
		            hisbenz_value = 6;
             	}

              if (hisopioid[0].checked == true){
		            hisopioid_value = 4;
             	}

              if (hispsy[0].checked == true){
		            hispsy_value = 1;
             	}
               //getting the final score and level
             totalscore=hisage_value+hisgender_value+hisbmi_value+hisbenz_value+hisopioid_value+hispsy_value;
             if (totalscore >= 0 && totalscore <= 5){
                asalevel="I";
             } else if(totalscore >= 6 && totalscore <= 10){
               asalevel="II";
             } else if(totalscore >= 11 && totalscore <= 15){
               asalevel="III";
             } else if(totalscore >= 16 && totalscore <= 19){
               asalevel="IV";
             } else if (totalscore>=20){
               asalevel="V";
             }
             //give an  alert
             alert("Your evaluation is done!"+" ASA level is "+asalevel);
             //show the next step button
             document.getElementById("next").innerHTML = "Next Step";
             document.getElementById("next").style="";
             //show the final score and level
             document.getElementById("myscore").value=totalscore;
             document.getElementById("mycategory").value=asalevel;

           }
      </script>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


    </div>
  </body>

</html>