<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String S1,S2,S3;

S1=request.getParameter("user_id");
S2=request.getParameter("vehicle_name");
S3=request.getParameter("vehicle_type");

int k=d.stmt.executeUpdate("insert into vehicle_details values(null,'"+S1+"','"+S2+"','"+S3+"')");
%>

<script>
alert("values are inserted.......");
document.location="Vehical_Details_view.jsp";
</script>