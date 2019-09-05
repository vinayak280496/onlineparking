<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
String S1,S2,S3,S4,S5,S6;
S1=request.getParameter("parking_name");
S2=request.getParameter("area_name");
S3=request.getParameter("address");
S4=request.getParameter("city");
S5=request.getParameter("contact_no");
S6=request.getParameter("owner_name");

int k=d.stmt.executeUpdate("insert into parking_details values(null,'"+S1+"','"+S2+"','"+S3+"','"+S4+"','"+S5+"','"+S6+"')");
%>

<script>
alert("values are insrted....");
document.location="Parking_Detalis_view.jsp";
</script>