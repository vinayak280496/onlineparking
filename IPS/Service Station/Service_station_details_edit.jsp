
<body>
  <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  <div align="center">
    <%
String id=request.getParameter("edit");
ResultSet rs=d.stmt.executeQuery("select *from  service_station_details where ser_stan_id="+id+"");
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
                        <h4>Service Station Details </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="Service_station_details_update.jsp" id="formID">
  <table width="200" border="1">

	<input name="ser_stan_id" type="hidden" id="ser_stan_id" value="<%=rs.getInt("ser_stan_id")%>">
    <tr>
      <td>Service Station Name </td>
      <td><input name="ser_stan_name" type="text" id="ser_stan_name" value="<%=rs.getString("ser_stan_name")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Service Station Type</td>
      <td><input name="ser_stan_type" type="text" id="ser_stan_type" value="<%=rs.getString("ser_stan_type")%>" class="validate[required,custom[onlyLetter]]"></td>
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
      <td>State</td>
      <td><input name="state" type="text" id="state" value="<%=rs.getString("state")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Contact No </td>
      <td><input name="contact_no" type="text" id="contact_no" value="<%=rs.getString("contact_no")%>" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Fecilities</td>
      <td><input name="fecilities" type="text" id="fecilities" value="<%=rs.getString("fecilities")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" name="Submit" value="Submit"  class="btn btn-primary">
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
