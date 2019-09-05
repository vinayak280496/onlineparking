<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="s" class="ips.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
String s1,s2,s3;
String slno=session.getAttribute("slno").toString();


int zs=Integer.parseInt(slno);

//int k=s.stmt.executeUpdate("insert into parking_chart values('"+pid+"','"+s2+"','status')");
int z;

for(z=0;z<zs;z++)
{
String pid=session.getAttribute("pid").toString();

s1=pid;
s2=request.getParameter("p_slot"+z);
int k=s.stmt.executeUpdate("insert into parking_chart values('null','"+s1+"',"+s2+",'available')");
//out.println(z);
//out.println(s1);
//out.println(s2);
}
%>
<script>
alert("Parking Chart is Created");
document.location="home.jsp";

</script>



