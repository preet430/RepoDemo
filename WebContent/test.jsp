<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
function check()
{
	var a=document.frm.a1;
	var b=document.frm.b1;
	var c=document.frm.c1;
	var d=document.frm.d1;
	var e=document.frm.e1;
	for(i=0;i<a.length;i++){
		if(a[i].checked==true)
			{
			for(i=0;i<b.length;i++){
				if(b[i].checked==true)
					{
					for(i=0;i<c.length;i++){
						if(c[i].checked==true)
							{
							for(i=0;i<d.length;i++){
								if(d[i].checked==true)
									{
									for(i=0;i<e.length;i++){
										if(e[i].checked==true)
											return true;
									}
									}
							}
							}
					}
					}
			}
			}
	}
	alert("please select answer of all question");
	return false;
	
	}
</script>
<title>Insert title here</title>
</head>
<body>
<form name="frm" onsubmit="return check()" action="result.java">
<h1 align="center">question paper</h1>
1.which language is object oriented?</br>
a.c++<input type="radio" name="a1">
b.python<input type="radio" name="a1">
c.dot net<input type="radio" name="a1"></br><hr/>
2.following which is the localhost?</br>
a.ruby<input type="radio" name="b1">
b.xampp<input type="radio" name="b1">
c.xender<input type="radio" name="b1"><hr/>
3.which is the language use for artificial intelligence?</br>
a.python<input type="radio" name="c1">
b.c++<input type="radio" name="c1">
c.c<input type="radio" name="c1"><hr/>
4.following which is used to connect with the database in php?</br>
a.ms access<input type="radio" name="d1">
b.mysql<input type="radio" name="d1">
c.glass fish<input type="radio" name="d1"><hr/>
5.which environment is used to run java?</br>
a.eclipse<input type="radio" name="e1">
b.photoshop<input type="radio" name="e1">
c.bracket<input type="radio" name="e1"><hr/>
submit:<input type="submit" value="submit">
</form>
</body>
</html>