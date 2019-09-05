<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String S1,S2,S3,S4;

S1=request.getParameter("parking_id");
S2=request.getParameter("rate");
S3=request.getParameter("monthly_pass");
S4=request.getParameter("status");

int k=d.stmt.executeUpdate("insert into parking_rates values("+S1+",null,'"+S2+"','"+S3+"','"+S4+"')");

%>

<script>
alert("values are insertted....");
document.location="Parking_Rates_view.jsp";

</script>

