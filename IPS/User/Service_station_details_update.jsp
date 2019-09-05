<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String S1,S2,S3,S4,S5,S6,S7,S8;
S8=request.getParameter("ser_stan_id");
S1=request.getParameter("ser_stan_name");
S2=request.getParameter("ser_stan_type");
S3=request.getParameter("address");
S4=request.getParameter("city");
S5=request.getParameter("state");
S6=request.getParameter("contact_no");
S7=request.getParameter("fecilities");

int k=d.stmt.executeUpdate("update service_station_details set Ser_stan_name='"+S1+"',Ser_stan_type='"+S2+"',address='"+S3+"',city='"+S4+"',state='"+S5+"',contact_no='"+S6+"',fecilities='"+S7+"' where ser_stan_id="+S8+" ");

%>

<script>
alert("values are updated....");
document.location="Service_station_details_view.jsp";

</script>

