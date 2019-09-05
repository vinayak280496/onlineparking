<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">Parking Rates
				<div align="right"><a href="../User/Parking_Rates_form.jsp" title="Add New">Add New Record  <img height="50px" width="50px" src="abc.png"/></a></div></h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
<thead>
  <tr>
    <th>Parking ID </th>
    <th>Rate ID </th>
    <th>Rate</th>
    <th>Monthly Pass </th>
    <th>Status</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  <%
  int i=1;
  ResultSet rs=d.stmt.executeQuery("select * from parking_rates");
  while (rs.next())
  {
  %>
  <thead>
    <tr>
    <td><%=i++%></td>
    <td><%=rs.getInt("rate_id")%></td>
    <td><%=rs.getString("rate")%></td>
    <td><%=rs.getString("monthly_pass")%></td>
    <td><%=rs.getString("status")%></td>
    <td><a onClick="return confirm('Do You Really Want To Delete....?')" href="Parking_Rates_delete.jsp?delete=<%=rs.getInt("rate_id")%>"><img height="30px" width="30px" src="delete.png"/></a></td>
    <td><a href="Parking_Rates_edit.jsp?edit=<%=rs.getInt("rate_id")%>" onClick="return confirm('Do You Really Want To Edit....?')"><img height="30px" width="30px" src="photo.jpg"/></a></td>
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