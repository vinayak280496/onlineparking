
<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
String id=request.getParameter("edit");
ResultSet rs=d.stmt.executeQuery("select *from parking_details where parking_id="+id+"");
rs.next();
%>
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
                        <h4>Parking Deatails </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="Parking_Detalis_update.jsp" id="formID">
  <table width="200" border="1">
    <tr>
      <td colspan="2">Parking Deatails </td>
    </tr>
	<input name="parking_id" type="hidden" id="parking_id" value="<%=rs.getInt("parking_id")%> ">
    <tr>
      <td>Parking Name </td>
      <td><input name="parking_name" type="text" id="parking_name" value="<%=rs.getString("parking_name")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Area Name </td>
      <td><input name="area_name" type="text" id="area_name" value="<%=rs.getString("area_name")%>" class="validate[required]"></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><input name="address" type="text" id="address" value="<%=rs.getString("address")%>" class="validate[required]"></td>
    </tr>
    <tr>
      <td>City</td>
      <td><input name="city" type="text" id="city" value="<%=rs.getString("city")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Contact No </td>
      <td><input name="contact_no" type="text" id="contact_no" value="<%=rs.getString("contact_no")%>" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Owner Name </td>
      <td><input name="owner_name" type="text" id="owner_name" value="<%=rs.getString("owner_name")%>"class="validate[required,custom[onlyLetter]]"></td>
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
