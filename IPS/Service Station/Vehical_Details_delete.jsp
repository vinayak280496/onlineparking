 <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  
  <%
  String id=request.getParameter("delete");
  
  int k=d.stmt.executeUpdate("delete from vehicle_details where vehicle_id="+id+" ");
  %>
  
  <script>
  alert("values are deleted....");
  document.location="Vehical_Details_view.jsp";
  </script>