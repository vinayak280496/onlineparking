<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<table width="200" border="1">
  <tr>
    <td colspan="2"> Login</td>
  </tr>
  <tr>
    <td>Username</td>
    <td><input name="username" type="text" id="username"></td>
  </tr>
  <tr>
    <td>Password</td>
    <td><input name="password" type="text" id="password"></td>
  </tr>
  <tr>
    <td>Type</td>
    <td><input name="type" type="text" id="type"></td>
  </tr>
  <tr>
    <td>Hint Question </td>
    <td><input name="hint_question" type="text" id="hint_question"></td>
  </tr>
  <tr>
    <td>Hint Answer </td>
    <td><input name="hint_answer" type="text" id="hint_answer"></td>
  </tr>
  <tr>
    <td>Status</td>
    <td><input name="status" type="text" id="status"></td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" name="Submit" value="Submit">
    <input type="reset" name="Reset" value="Reset"></td>
  </tr>
</table>
</body>
</html>
