	
		
<%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
<%
String username=request.getParameter("username");
String h_a=request.getParameter("h_a");

ResultSet rs=d.stmt.executeQuery("select * from login where username='"+username+"' and hint_answer='"+h_a+"'");
if(rs.next())
{
%>

<form name="form1" method="post" action="">
 <div class="login">
			<div class="email">
  <table width="237" border="1" align="center">
    
	
    <tr>
      <td height="46">Username :<%=rs.getString("username")%></td>
    </tr>
    <tr>
      <td height="59">Password :<%=rs.getString("password")%></td>
    </tr>
    <tr>
      <td height="41"><a href="login.jsp">Go to Login </a></td>
    </tr>
  </table>
</form>
<%
}
else
{
%>
<script>
alert("Invalid Answer");
document.location="login.jsp";
</script>
<%
}
%>
