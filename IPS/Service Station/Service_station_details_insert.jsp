<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String S1,S2,S3,S4,S5,S6,S7;

S1=request.getParameter("ser_stan_name");
S2=request.getParameter("ser_stan_type");
S3=request.getParameter("address");
S4=request.getParameter("city");
S5=request.getParameter("state");
S6=request.getParameter("contact_no");
S7=request.getParameter("fecilities");

int k=d.stmt.executeUpdate("insert into service_station_details values(null,'"+S1+"','"+S2+"','"+S3+"','"+S4+"','"+S5+"','"+S6+"','"+S7+"')");

%>

<script>
alert("values are insertted....");
document.location="Service_station_details_view.jsp";

</script>

