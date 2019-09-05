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
<form name="form1" method="post" action="Vehical_Details_insert.jsp" id="formID">
  <table width="325" height="250" border="0" align="center">
    <tr>
      <td colspan="2"><div align="center">Vehical Details </div></td>
    </tr>
    <tr>
      <td width="92">User ID </td>
      <td width="268">
	  <select name="user_id" id="user_id"  class="validate[required]">
	 <option>--select--</option>
	<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
   ResultSet rs=d.stmt.executeQuery("select * from  user_registration");
   while(rs.next())
   {
%>
    <option value="<%=rs.getInt("user_id")%>"><%=rs.getString("name")%></option>
	<%
	}
	%>
      </select></td>
    </tr>
    <tr>
      <td>Vehical Name </td>
      <td><input name="vehicle_name" type="text" id="vehicle_name" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Vehical Type </td>
      <td><input name="vehicle_type" type="text" id="vehicle_type" class="validate[required]"></td>
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

