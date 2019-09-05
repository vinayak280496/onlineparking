<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String s1,s2,s3,s4;
s4=request.getParameter("parcking_chart_id");
s1=request.getParameter("parking_id");
s2=request.getParameter("slot_no");
s3=request.getParameter("status");

int k=d.stmt.executeUpdate("update parking_chart set parking_id='"+s1+"',slot_no="+s2+",status='"+s3+"' where parcking_chart_id="+s4+"");
%>

<script>
alert("values are Updated....");
document.location="Parking_Chart_view.jsp";
</script>