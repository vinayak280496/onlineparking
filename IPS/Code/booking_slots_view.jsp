<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="sidebar.jsp"></jsp:include>
	       
            <div id="page-content">
    
	          
				
				
                           <!-- With Borders Style -->
                <h4 class="page-header">Booking Slot Details
				<div align="right"><a href="expense_details_form.php" title="Add New"><img src="img/loading.gifs/loading19@2x.gif"></a></div></h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
<thead>
<jsp:include page="header.jsp"></jsp:include> 

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
  ResultSet rs=d.stmt.executeQuery("select * from booked_parking_slots b,parking_details p where b.parking_id=p.parking_id");
  while(rs.next())
  {
  %>
  <tbody>
  <tr>
    <td><%=rs.getInt("booking_id")%></td>
    <td><%=rs.getString("parking_name")%></td>
    <td><%=rs.getInt("slot_no")%></td>
    <td><%=rs.getInt("rate")%></td>
    <td><%=rs.getString("b_date")%></td>
    <td><%=rs.getString("b_by")%></td>
    <td><a onClick="return confirm('Do You Really Want To Delete....?')" href="booking_slots_delete.jsp?delete=<%=rs.getInt("booking_id")%>">delete</a></td>
    <td><a href="booking_slots_edit.jsp?edit=<%=rs.getInt("booking_id")%>" onClick="return confirm('Do You Really Want To Edit....?')">Edit</a></td>
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