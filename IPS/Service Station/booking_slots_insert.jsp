<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
String S1,S2,S3,S4,S5;
S1=request.getParameter("parking_id");
S2=request.getParameter("slot_no");
S3=request.getParameter("rate");
S4=request.getParameter("b_date");
S5=request.getParameter("b_by");

int k=d.stmt.executeUpdate("insert into booked_parking_slots values(null,"+S1+","+S2+","+S3+",'"+S4+"','"+S5+"')");
%>
<script>
alert("values are inserted.....");
document.location="booking_slots_view.jsp";
</script>