<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String s1,s2,s3;
s1=request.getParameter("parking_id");
s2=request.getParameter("slot_no");
s3=request.getParameter("status");

int k=d.stmt.executeUpdate("insert into parking_chart values(null,'"+s1+"',"+s2+",'"+s3+"')");
%>

<script>
alert("values are inserted....");
document.location="Parking_Chart_view.jsp";
</script>