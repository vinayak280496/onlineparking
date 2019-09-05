<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
	       
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">Parking Chart</h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
<thead>
  <tr>
    <th>Parking Chart Id </th>
    <th>Parking Id </th>
    <th>Slot No </th>
    <th>Status</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  </thead> 

  <%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
ResultSet rs=d.stmt.executeQuery("select * from parking_chart");

while(rs.next())
{
%>
  <tbody>
  <tr>
    <td><%=rs.getInt("parcking_chart_id")%></td>
    <td><%=rs.getString("parking_id")%></td>
    <td><%=rs.getInt("slot_no")%></td>
    <td><%=rs.getString("status")%></td>
    <td><a href="Parking_Chart_delete.jsp?delete=<%=rs.getInt("parcking_chart_id")%>" onClick="return confirm('Do You Really Want To Delete....?')"><img height="30px" width="30px" src="delete.png"/></td>
    <td><a href="Parking_Chart_edit.jsp?edit=<%=rs.getInt("parcking_chart_id")%>" onClick="return confirm('Do You Really Want To Edit....?')"><img height="30px" width="30px" src="photo.jpg"/></a></td>
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
