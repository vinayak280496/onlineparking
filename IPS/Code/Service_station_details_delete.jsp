 <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  
  <%
  String id=request.getParameter("delete");
  
  int z=d.stmt.executeUpdate("delete from service_station_details where ser_stan_id="+id+" ");
  %>
  
  <script>
  alert("values are deleted....");
  document.location="Service_station_details_view.jsp";
  </script>