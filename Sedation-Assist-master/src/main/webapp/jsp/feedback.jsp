
<!DOCTYPE html>
<html>
  <head>
    <!--<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1">-->
    <title>Feedback</title>
    <!--<link rel="stylesheet" type="text/css" href="style2.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
    .w3-button {width:150px;}
    </style>-->
      <style><%@include file="../styles/style2.css"%></style>

  </head>
  <body>
        <div class="infobox">
                <h1 style="font-size:30px;">Feeedback</h1>
                <p>Degree of Consciousness</p>
                <select id="level">
                  <option value="1">Level I - very sober</option>
                  <option value="2">Level II - medium sober</option>
                  <option value="3">Level III - sleepy</option>
                </select>
                <br>
                <br>
                <p>Degree of Pain</p>
                <input type="text" id="pain" />
                <p>Satisfaction of Nurse Performance</p>
                <input type="text" id="nurse" />
                <p>Recovery Situation</p>
                <input type="text" id="recovery" />
                <br>
                <br>
                <input type="button" value="Finish" onclick="process()"/>
            </div>
            <script>
              function process()
              {
                var hislevel=document.getElementById("level").value;
                if (hislevel==1){
                  alert("Feedback is received. The patient can leave right now");
            	} else if (hislevel==2){
                alert("Feedback is received. The patient need to stay for 10 minutes");
              } else if (hislevel==3){
                alert("Feedback is received. The patient need to stay for 45 minutes");
              }
              }
         </script>





  </body>
</html>
