<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">Vehical Details
				<div align="right"><a href="expense_details_form.php" title="Add New"><img src="img/loading.gifs/loading19@2x.gif"></a></div></h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
<thead>
  <tr>
    <td width="62">Vehical ID</td>
    <td width="46">User ID</td>
    <td width="82">Vehicle Name </td>
    <td width="77">Vehical Type </td>
    <td width="39">Delete</td>
    <td width="180">Edit</td>
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
    <td><a onClick="return confirm('Do You Really Want To Delete....?')" href="Vehical_Details_delete.jsp?delete=<%=rs.getInt("vehicle_id")%>">delete</a></td>
    <td><a href="Vehical_Details_edit.jsp?edit=<%=rs.getInt("vehicle_id")%>" onClick="return confirm('Do You Really Want To Edit....?')">Edit</a></td>
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