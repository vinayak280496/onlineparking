<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String S1,S2,S3,S4,S5;
S5=request.getParameter("rate_id");
S1=request.getParameter("parking_id");
S2=request.getParameter("rate");
S3=request.getParameter("monthly_pass");
S4=request.getParameter("status");

int k=d.stmt.executeUpdate("update parking_rates set parking_id="+S1+",rate='"+S2+"',monthly_pass='"+S3+"',status='"+S4+"'where rate_id="+S5+"");

%>

<script>
alert("values are updated....");
document.location="Parking_Rates_view.jsp";

</script>

