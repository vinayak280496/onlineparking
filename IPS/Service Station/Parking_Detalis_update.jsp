<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
String S1,S2,S3,S4,S5,S6,S7;
S7=request.getParameter("parking_id");
S1=request.getParameter("parking_name");
S2=request.getParameter("area_name");
S3=request.getParameter("address");
S4=request.getParameter("city");
S5=request.getParameter("contact_no");
S6=request.getParameter("owner_name");

int k=d.stmt.executeUpdate("update parking_details set parking_name='"+S1+"',area_name='"+S2+"',address='"+S3+"',city='"+S4+"',contact_no='"+S5+"',owner_name='"+S6+"' where parking_id="+S7+"");
%>

<script>
alert("values are updateed....");
document.location="Parking_Detalis_view.jsp";
</script>