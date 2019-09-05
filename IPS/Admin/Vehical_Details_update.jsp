<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String S1,S2,S3,S4;
S4=request.getParameter("vehicle_id");
S1=request.getParameter("user_id");
S2=request.getParameter("vehicle_name");
S3=request.getParameter("vehicle_type");

int k=d.stmt.executeUpdate("update vehicle_details set user_id='"+S1+"',vehicle_name='"+S2+"',vehicle_type='"+S3+"' where vehicle_id="+S4+" ");
%>

<script>
alert("values are updated.......");
document.location="Vehical_Details_view.jsp";
</script>