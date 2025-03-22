<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test&result</title>
<script language="JavaScript">


var numQues = 4;
var numChoi = 4;

var answers = new Array(4);
answers[0] = "c++";
answers[1] = "xampp";
answers[2] = "python";
answers[3] = "mysql";

function getScore(form) {
var score = 0;
var currElt;
var currSelection;

for (i=0; i<numQues; i++) {
currElt = i*numChoi;
for (j=0; j<numChoi; j++) {
  currSelection = form.elements[currElt + j];
  if (currSelection.checked) {
    if (currSelection.value == answers[i]) {
      score++;
      break;
    }
  }
}
}

score = Math.round(score/numQues*100);
form.percentage.value = score + "%";

var correctAnswers = "";
for (i=1; i<=numQues; i++) {
correctAnswers += i + ". " + answers[i-1] + "\r\n";
}
form.solutions.value = correctAnswers;

}
</script>
</head>
<body>
<div id="centerTOP">

<h1 align="center">question paper</h1>

</div>



<div id="center">



<form name="quiz" method="post" action="mailto:myemail"enctype="text/plain">    
<p>

<h2>1.which language is object oriented?</h2>
<input type="radio" name="q1" value="c++">c++<br>
<input type="radio" name="q1" value="python">python<br>
<input type="radio" name="q1" value="dot net">dot net<br>
<input type="radio" name="q1" value="ruby">ruby<br><hr/>
<p>

<h2>2.following which is the localhost?</h2>
<input type="radio" name="q2" value="ruby">ruby<br>
<input type="radio" name="q2" value="xampp">xampp<br>
<input type="radio" name="q2" value="xender">xender<br>
<input type="radio" name="q2" value="magento">magento<br><hr/>
<p>

<h2>3.which is the language use for artificial intelligence?</h2>
<input type="radio" name="q3" value="python">python<br>
<input type="radio" name="q3" value="c++">c++<br>
<input type="radio" name="q3" value="c">c<br>
<input type="radio" name="q3" value="truncate">truncate<br><hr/>
<p>

<h2>4.following which is used to connect with the database in php?</h2>
<input type="radio" name="q4" value="ms access">ms access<br>
<input type="radio" name="q4" value="mysql">mysql<br>
<input type="radio" name="q4" value="glassfish">glassfish<br>
<input type="radio" name="q4" value="wamp">wamp<br><hr/>
<p>

<input type="button" value="Get score" onClick="getScore(this.form)"><br>     <br><br>

<font face="arial" color="#5f5f5f">Score = <input type=text size=15 name="percentage" style="color: #000000; background-color: #d9d9d9;"><br><br>
Correct answers:</font><br>
<textarea name="solutions" wrap="virtual" rows="5" cols="40" style="color: #000000; background-color: #d9d9d9;"></textarea>
<br><br>

</form>

</div>

</body>
</html>