<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">Parking Fecility
				<div align="right"><a href="../User/Parking_Fecility_form.jsp" title="Add New">Add New Record  <img height="50px" width="50px" src="abc.png"/></a></div></h4>

		
    
				
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
  int i=1;
  ResultSet rs=d.stmt.executeQuery("select * from parking_fecility");
  
  while(rs.next())
  {
  %>
   <tbody>
  <tr>
    <td><%=i++%></td>
    <td><%=rs.getString("parking_id")%></td>
    <td><%=rs.getString("fecility_name")%></td>
    <td><%=rs.getString("discription")%></td>
    <td><a href="Parking_Fecility_delete.jsp?delete=<%=rs.getInt("parking_fecility_id")%>" onClick="return confirm('Do You Really Want To Delete....?')"><img height="30px" width="30px" src="delete.png"/></td>
    <td><a href="Parking_Fecility_edit.jsp?edit=<%=rs.getInt("parking_fecility_id")%>" onClick="return confirm('Do You Really Want To Edit....?')"><img height="30px" width="30px" src="photo.jpg"/></a></td>
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