<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String S1,S2,S3,S4;
S4=request.getParameter("parking_fecility_id");
S1=request.getParameter("parking_id");
S2=request.getParameter("fecility_name");
S3=request.getParameter("discription");

int z=d.stmt.executeUpdate("update parking_fecility set parking_id='"+S1+"',fecility_name='"+S2+"',discription='"+S3+"' where parking_fecility_id="+S4+"");

%>
<script>
alert("values are updated....");
document.location="Parking_Fecility_view.jsp";
</script>