<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
String S1,S2,S3,S4,S5,S6;

S6=request.getParameter("booking_id");
S1=request.getParameter("parking_id");
S2=request.getParameter("slot_no");
S3=request.getParameter("rate");
S4=request.getParameter("b_date");
S5=request.getParameter("b_by");

int k=d.stmt.executeUpdate("update booked_parking_slots set parking_id="+S1+",slot_no="+S2+",rate="+S3+",b_date='"+S4+"',b_by='"+S5+"' where booking_id="+S6+"");
%>
<script>
alert("values are Updated.....");
document.location="booking_slots_view.jsp";
</script>