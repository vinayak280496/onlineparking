<jsp:include page="metatags.jsp"></jsp:include> 

<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="sidebar.jsp"></jsp:include>

            <!-- Page Content -->
            <div id="page-content">
                <!-- END Breadcrumb -->

                <!-- General Forms Block -->
                <div class="block block-themed block-last">
                    <!-- General Forms Title -->
                    <div class="block-title">
                        <h4>Booked Parking Slots </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include> 



  <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  <div align="center">
    <%
String id=request.getParameter("edit");
ResultSet rs=d.stmt.executeQuery("select *from  booked_parking_slots where booking_id="+id+"");
rs.next();
%>
  <form name="form1" method="post" action="booking_slots_update.jsp"  id="formID">


<table width="312" border="1">
  <tr>
    <td colspan="2">Booked Parking Slots </td>
  </tr>
  <input name="booking_id" type="hidden" id="booking_id" value="<%=rs.getInt("booking_id")%>">
  <tr>
    <td width="105">Parking ID </td>
	 <td width="191">	
	<select name="parking_id" id="parking_id" class="validate[required]">
      <option value="">--select--</option>
      <jsp:useBean id="e" class="ips.dbconnect"/>
      
      <jsp:getProperty name="e" property="conn"/>    
      <%
   ResultSet rs1=e.stmt.executeQuery("select * from parking_details");
   while(rs1.next())
   {
%>
      <option value="<%=rs1.getInt("parking_id")%>"><%=rs1.getString("parking_name")%></option>
      <%
	}
	%>
    </select></td>
  </tr>
  <tr>
    <td>Slot No </td>
    <td><input name="slot_no" type="text" id="slot_no" value="<%=rs.getInt("slot_no")%>" class="validate[required,custom[onlyNumber]]"></td>
  </tr>
  <tr>
    <td>Rate</td>
    <td><input name="rate" type="text" id="rate" value="<%=rs.getInt("rate")%>" class="validate[required,custom[onlyNumber]]"></td>
  </tr>
  <tr>
    <td>Booked Date </td>
    <td><input name="b_date" type="text" id="b_date" value="<%=rs.getString("b_date")%>" class="validate[required,custom[date]]"></td>
  </tr>
  <tr>
    <td>Book By </td>
    <td><input name="b_by" type="text" id="b_by" value="<%=rs.getString("b_by")%>" class="validate[required]"></td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" name="Submit" value="Submit" class="btn btn-primary">
    <input type="reset" name="Reset" value="Reset" class="btn btn-danger"></td>
  </tr>
</table>

</form> 
</div>
                    <!-- END General Forms Content -->
                </div>
                <!-- END General Forms Block -->
            </div>
            <!-- END Page Content -->
			
			
 <jsp:include page="footer.jsp"></jsp:include>

