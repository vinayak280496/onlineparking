<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="s" class="ips.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5,s6;
s1=request.getParameter("pid");
s2=request.getParameter("slno");
s3=request.getParameter("rate");
s4=request.getParameter("date");
s5=request.getParameter("booked_by");

int k=s.stmt.executeUpdate("insert into booked_parking_slots  values('null',"+s1+","+s2+","+s3+",'"+s4+"','"+s5+"')");
     k=s.stmt.executeUpdate("update parking_chart set status='booked' where parking_id="+s1+" and slot_no="+s2+"");




%>
<script>
alert("you Have Booked slote No:<%=s1%>parking Name: <%=session.getAttribute("p_name").toString()%>");
document.location="home.jsp";
</script>



