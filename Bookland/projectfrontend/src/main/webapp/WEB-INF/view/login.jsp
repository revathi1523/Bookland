<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style type="text/css">
body
{
margin:0;
padding:0;
font-family:sans-serif;
background:url(resources/images/log.jpg);
background-size:cover;
}
.box
{
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
width:400px;
padding:40px;
background:rgba(0,0,0,.8);
box-sizing:border-box;
box-shadow:0 15px 25px rgba(0,0,0,.5);
border-radius:10px;
}
.box h2
{
margin: 0 0 30px;
padding:0;
color:#fff;
text-align:center;
}
.box .inputbox
{
position:relative;
}
form {
  padding: 20px;
  background: #000000;
  color: #fff;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
}
form label,
form input,
form button {
  border: 0;
  margin-bottom: 3px;
  display: block;
  width: 75%;
}
form input 
{
  height: 25px;
  line-height: 25px;
  background: #fff;
  color: #000;
  padding: 0 6px;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

form button {
  height: 30px;
  line-height: 30px;
  background: #e67e22;
  color: #fff;
  margin-top: 10px;
  cursor: pointer;
}
form .error {
  color: #ff0000;
}





</style>
</head>
<body>
	<c:url value='/j_spring_security_check' var="log"></c:url>
	
		<div class="box">
		<h2 style="color:red; font-family:italy;">LOGIN</h2>
		<form action="${log}" method="post">
		<table align="center">
			<tr>
				<td> Username</td>
				<td><input type="text" required="true" name="j_username"></td>
			</tr>
			<tr>
				<td> Password</td>
				<td><input type="password" required="true" id="j_password" name="j_password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>
	</div>
	<span style="color: red">${error}</span>
</body>
</html>