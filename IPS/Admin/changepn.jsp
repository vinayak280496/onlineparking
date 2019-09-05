
<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%

	String old=request.getParameter("op");
	String pnew=request.getParameter("np");
	String pconf=request.getParameter("cp");

	String uname=session.getAttribute("uname").toString();

	ResultSet rs=d.stmt.executeQuery("select password from   login where username='"+uname+"' and password='"+old+"'");
	if(rs.next())
	{

		if(pnew.equals(pconf))
		{
			int k=d.stmt.executeUpdate("update login set password='"+pnew+"' where username='"+uname+"'");
%>

<script>
		alert("password is Changed");
		document.location="home.jsp";
</script>

<%
		}
		else
		{
%>

<script>
		alert("Check Conf password miss match");
		history.back();
</script>

<%
		}
		}
		else
		{
%>

<script>
		alert("Old password miss match");
		history.back();
</script>

<%
	}

%>
