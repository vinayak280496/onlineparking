<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">Service Station Details
				<div align="right"><a href="expense_details_form.php" title="Add New">Add New Record</a></div></h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
<thead>
  <tr>
    <th>Service station ID </th>
    <th>Service station name </th>
    <th>Service station type </th>
    <th>Address</th>
    <th>City</th>
    <th>State</th>
    <th>Contact No </th>
    <th>Fecility</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  </thead>
    
  <%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
int i=1;
ResultSet rs=d.stmt.executeQuery("select * from service_station_details");

while(rs.next())
{
%>
<thead>
  <tr>
    <td><%=i++%></td>
    <td><%=rs.getString("ser_stan_name")%></td>
    <td><%=rs.getString("ser_stan_type")%></td>
    <td><%=rs.getString("address")%></td>
    <td><%=rs.getString("city")%></td>
    <td><%=rs.getString("state")%></td>
    <td><%=rs.getString("contact_no")%></td>
    <td><%=rs.getString("fecilities")%></td>
    <td><a onClick="return confirm('Do You Really Want To Delete....?')" href="Service_station_details_delete.jsp?delete=<%=rs.getInt("ser_stan_id")%>">Delete</td>
    <td><a href="Service_station_details_edit.jsp?edit=<%=rs.getInt("ser_stan_id")%>" onClick="return confirm('Do You Really Want To Edit....?')">Edit</a></td>
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
