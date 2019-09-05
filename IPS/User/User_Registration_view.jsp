<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">User Registration</h4>

		
    
				
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
ResultSet rs=d.stmt.executeQuery("select * from user_registration");

while(rs.next())
{
%>
<thead>
  <tr>
    <td><%=rs.getInt("user_id")%></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("address")%></td>
    <td><%=rs.getString("contact_no")%></td>
    <td><%=rs.getString("city")%></td>
    <td><%=rs.getString("state")%></td>
    <td><%=rs.getString("user_type")%></td>
    <td><a onClick="return confirm('Do You Really Want To Delete....?')" href="User_Registration_delete.jsp?delete=<%=rs.getInt("user_id")%>"><img height="30px" width="30px" src="delete.png"/></td>
    <td><a href="User_Registration_edit.jsp?edit=<%=rs.getInt("user_id")%>" onClick="return confirm('Do You Really Want To Edit....?')"><img height="30px" width="30px" src="photo.jpg"/></a></td>
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