<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
session.setAttribute("uname",username);
ResultSet rs=d.stmt.executeQuery("select * from login where username='"+username+"' and password='"+password+"' ");
if(rs.next())
{

String type=rs.getString("type");
if(type.equals("Admin"))
{
response.sendRedirect("Admin/home.jsp");
}

else if(type.equals("User"))
{
response.sendRedirect("User/home.jsp");
}
else if(type.equals("Service Station"))
{
response.sendRedirect("Service Station/home.jsp");
}
else if(type.equals("Parking owner"))
{
response.sendRedirect("Parking owner/home.jsp");
}
}
else
{
%>

<script>
alert("Invalid User Name or password");
document.location="login.jsp";
</script>
<%
}

%>
