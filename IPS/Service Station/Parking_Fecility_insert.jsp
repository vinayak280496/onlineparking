<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String S1,S2,S3;

S1=request.getParameter("parking_id");
S2=request.getParameter("fecility_name");
S3=request.getParameter("discription");

int z=d.stmt.executeUpdate("insert into parking_fecility values(null,'"+S1+"','"+S2+"','"+S3+"')");

%>
<script>
alert("values are inserted....");
document.location="Parking_Fecility_view.jsp";
</script>