<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect"%>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>

<%
String S1,S2,S3,S4,S5,S6,S7;
S7=request.getParameter("user_id");
S1=request.getParameter("name");
S2=request.getParameter("address");
S3=request.getParameter("contact_no");
S4=request.getParameter("city");
S5=request.getParameter("state");
S6=request.getParameter("user_type");

int k=d.stmt.executeUpdate("update user_registration set name='"+S1+"',address='"+S2+"',contact_no='"+S3+"',city='"+S4+"',state='"+S5+"',user_type='"+S6+"' where user_id="+S7+"");


%>

<script>
alert("values are Updated.....");
document.location="User_Registration_view.jsp";
</script>