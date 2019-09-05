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
<form name="form1" method="post" action="booking_slots_insert.jsp" id="formID">


<table width="312" height="250" align="center">
  <tr>
    <td width="105">Parking ID </td>
    <td width="191">	
	<select name="parking_id" id="parking_id" class="validate[required]">
      <option value="">--select--</option>
      <%@page import="java.sql.*"%>
      <%@page import="ips.dbconnect" %>
      <jsp:useBean id="d" class="ips.dbconnect"/>
      
      <jsp:getProperty name="d" property="conn"/>    
      <%
   ResultSet rs=d.stmt.executeQuery("select * from parking_details");
   while(rs.next())
   {
%>
      <option value="<%=rs.getInt("parking_id")%>"><%=rs.getString("parking_name")%></option>
      <%
	}
	%>
    </select></td>
  </tr>
  <tr>
    <td>Slot No </td>
    <td><input name="slot_no" type="text" id="slot_no" class="validate[required,custom[onlyNumber]]"></td>
  </tr>
  <tr>
    <td>Rate</td>
    <td><input name="rate" type="text" id="rate" class="validate[required,custom[onlyNumber]]"></td>
  </tr>
  <tr>
    <td>Booked Date </td>
    <td><input name="b_date" type="text" id="b_date" class="validate[required,custom[date]]"></td>
  </tr>
  <tr>
    <td>Book By </td>
    <td><input name="b_by" type="text" id="b_by" class="validate[required]"></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="Submit" value="Submit" class="btn btn-primary">
      <input type="reset" name="Reset" value="Reset" class="btn btn-danger">
    </div></td>
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
