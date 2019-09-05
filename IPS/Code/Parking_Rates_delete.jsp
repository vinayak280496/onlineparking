 <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  
  <%
  String id=request.getParameter("delete");
  
  int z=d.stmt.executeUpdate("delete from parking_rates where rate_id="+id+" ");
  %>
  
  <script>
  alert("values are deleted....");
  document.location="Parking_Rates_view.jsp";
  </script>