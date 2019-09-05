<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
	       
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">Booking Slot Details
				<div align="right"><a href="booking_slots_form.jsp" title="Add New">Add New Record  <img height="50px" width="50px" src="abc.png"/></a></div></h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
<thead>

  <tr>
    <th>Booking ID </th>
    <th>Parking Id </th>
    <th>Slot No </th>
    <th>Rate</th>
    <th>Booking Date </th>
    <th>Book By </th>
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
  ResultSet rs=d.stmt.executeQuery("select * from booked_parking_slots b,parking_details p where b.parking_id=p.parking_id");
  while(rs.next())
  {
  %>
  <tbody>
  <tr>
    <td><%=i++%></td>
    <td><%=rs.getString("parking_name")%></td>
    <td><%=rs.getInt("slot_no")%></td>
    <td><%=rs.getInt("rate")%></td>
    <td><%=rs.getString("b_date")%></td>
    <td><%=rs.getString("b_by")%></td>
    <td><a onClick="return confirm('Do You Really Want To Delete....?')" href="booking_slots_delete.jsp?delete=<%=rs.getInt("booking_id")%>"><img height="30px" width="30px" src="delete.png"/></a></td>
    <td><a href="booking_slots_edit.jsp?edit=<%=rs.getInt("booking_id")%>" onClick="return confirm('Do You Really Want To Edit....?')"><img height="30px" width="30px" src="photo.jpg"/></a></td>
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