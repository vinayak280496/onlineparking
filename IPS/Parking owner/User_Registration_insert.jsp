<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String S1,S2,S3,S4,S5,S6;

S1=request.getParameter("name");
S2=request.getParameter("address");
S3=request.getParameter("contact_no");
S4=request.getParameter("city");
S5=request.getParameter("state");
S6=request.getParameter("user_type");

int k=d.stmt.executeUpdate("insert into user_registration values(null,'"+S1+"','"+S2+"','"+S3+"','"+S4+"','"+S5+"','"+S6+"')");
%>

<script>
alert("values are inserted.....");
document.location="User_Registration_view.jsp";
</script>