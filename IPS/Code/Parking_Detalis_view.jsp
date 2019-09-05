<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
	       
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">Parking Deatalis
				<div align="right"><a href="expense_details_form.php" title="Add New"><img src="img/loading.gifs/loading19@2x.gif"></a></div></h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
<thead>
  <tr>
    <th>Parking ID</th>
    <th>Parking Name </th>
    <th>Area Name </th>
    <th>Address</th>
    <th>City</th>
    <th>Contact No </th>
    <th>Owner Name </th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  </thead>
  <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  
  <%
  ResultSet rs=d.stmt.executeQuery("select * from parking_details");
  
  while(rs.next())
  {
  %>
  
  <tr>
  <tbody>
    <td><%=rs.getInt("parking_id")%></td>
    <td><%=rs.getString("parking_name")%></td>
    <td><%=rs.getString("area_name")%></td>
    <td><%=rs.getString("address")%></td>
    <td><%=rs.getString("city")%></td>
    <td><%=rs.getString("contact_no")%></td>
    <td><%=rs.getString("owner_name")%></td>
    <td><a href="Parking_Detalis_delete.jsp?delete=<%=rs.getInt("parking_id")%>" onClick="return confirm('Do You Really Want To Delete....?')">Delete</td>
    <td><a href="Parking_Detalis_edit.jsp?edit=<%=rs.getInt("parking_id")%>" onClick="return confirm('Do You Really Want To Edit....?')">Edit</td>
  </tr>
  </tbody>
  
  <%
  }
  %>
</table></div>
                <!-- END With Borders Section -->
                <!-- END With Borders Style -->
            </div>
            <!-- END Page Content -->
			
 <jsp:include page="footer.jsp"></jsp:include> 

