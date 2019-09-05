<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">Vehical Details</h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
<thead>
  <tr>
    <th>Vehical ID</th>
    <th>User ID</th>
    <th>Vehicle Name </th>
    <th>Vehical Type </th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  </thead>
   <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  
  <%
  ResultSet rs=d.stmt.executeQuery("select * from  vehicle_details v,user_registration b where v.user_id=b.user_id");
  
   while(rs.next())
  {
  %>
  <thead>
    <tr>
    <td><%=rs.getInt("vehicle_id")%></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("vehicle_name")%></td>
    <td><%=rs.getString("vehicle_type")%></td>
    <td><a onClick="return confirm('Do You Really Want To Delete....?')" href="Vehical_Details_delete.jsp?delete=<%=rs.getInt("vehicle_id")%>"><img height="30px" width="30px" src="delete.png"/></a></td>
    <td><a href="Vehical_Details_edit.jsp?edit=<%=rs.getInt("vehicle_id")%>" onClick="return confirm('Do You Really Want To Edit....?')"><img height="30px" width="30px" src="photo.jpg"/></a></td>
  </tr>
  <%
  }           
  %>
  </thead>
</table>
</div>
                <!-- END With Borders Section -->
                <!-- END With Borders Style -->
            </div>
            <!-- END Page Content -->
			
 <jsp:include page="footer.jsp"></jsp:include> 