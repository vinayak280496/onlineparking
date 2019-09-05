<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">User Registration
				<div align="right"><a href="expense_details_form.php" title="Add New"><img src="img/loading.gifs/loading19@2x.gif"></a></div></h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
<thead>
  <tr>
    <th>User ID </th>
    <th>Name</th>
    <th>Address</th>
    <th>Contact No </th>
    <th>City</th>
    <th>State</th>
    <th>User_type</th>
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
ResultSet rs=d.stmt.executeQuery("select * from user_registration");

while(rs.next())
{
%>
<thead>
  <tr>
    <td><%=i++%></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("address")%></td>
    <td><%=rs.getString("contact_no")%></td>
    <td><%=rs.getString("city")%></td>
    <td><%=rs.getString("state")%></td>
    <td><%=rs.getString("user_type")%></td>
    <td><a onClick="return confirm('Do You Really Want To Delete....?')" href="User_Registration_delete.jsp?delete=<%=rs.getInt("user_id")%>">Delete</td>
    <td><a href="User_Registration_edit.jsp?edit=<%=rs.getInt("user_id")%>" onClick="return confirm('Do You Really Want To Edit....?')">Edit</a></td>
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