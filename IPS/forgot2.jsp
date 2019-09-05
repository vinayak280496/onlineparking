	
  <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  <%
  
String username=request.getParameter("username");

ResultSet rs=d.stmt.executeQuery("select * from login where username='"+username+"'");
if(rs.next())
{
%>
<form name="form1" method="post" action="forgot3.jsp">
  <div align="center">
    <table width="200" border="1">
    <p>
      <input type="hidden" value="<%=username%>" name="username" readonly="">
    </p>
    <p>&nbsp;</p>
  <table width="481" border="1" align="center">
        <tr>
      <td width="100" height="53"><span class="style4">Hint Que: </span></td>
      <td width="154"><input name="h_q" type="text" id="h_q" value="<%=rs.getString("hint_question")%>"></td>
    </tr>
    <tr>
      <td height="61"><span class="style4">Hint ans: </span></td>
      <td><input name="h_a" type="text" id="h_a"></td>
    </tr>
    <tr>
      <td height="49" colspan="2">        <div align="center">
        <input class="enviar" type="submit" name="Submit" value="Submit">      
      </div></td>
    </tr>
  </table>
</form>
<%
}
else
{
%>
<script>
alert("Invalid Username");
history.back();
</script>
<%
}
%>


