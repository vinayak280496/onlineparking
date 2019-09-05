<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">Parking Fecility
				<div align="right"><a href="expense_details_form.php" title="Add New"><img src="img/loading.gifs/loading19@2x.gif"></a></div></h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
<thead>
  <tr>
    <th>Parking Fecility ID</th>
    <th>Parking ID </th>
    <th>Fecility Name </th>
    <th>Discription</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  </thead>
  <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  
  <%
  ResultSet rs=d.stmt.executeQuery("select * from parking_fecility");
  
  while(rs.next())
  {
  %>
   <tbody>
  <tr>
    <td><%=rs.getInt("parking_fecility_id")%></td>
    <td><%=rs.getString("parking_id")%></td>
    <td><%=rs.getString("fecility_name")%></td>
    <td><%=rs.getString("discription")%></td>
    <td><a href="Parking_Fecility_delete.jsp?delete=<%=rs.getInt("parking_fecility_id")%>" onClick="return confirm('Do You Really Want To Delete....?')">Delete</td>
    <td><a href="Parking_Fecility_edit.jsp?edit=<%=rs.getInt("parking_fecility_id")%>" onClick="return confirm('Do You Really Want To Edit....?')">Edit</a></td>
  </tr>
  <%
  }
  %>
  </tbody>
</table>
</div>
                <!-- END With Borders Section -->
                <!-- END With Borders Style -->
            </div>
            <!-- END Page Content -->
			
 <jsp:include page="footer.jsp"></jsp:include> 