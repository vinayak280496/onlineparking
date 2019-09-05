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
                        <h4>Parking Rates </h4>
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
ResultSet rs=d.stmt.executeQuery("select *from  parking_rates where rate_id="+id+"");
rs.next();
%>


<form name="form1" method="post" action="Parking_Rates_update.jsp" id="formID">
  <table width="325" height="250" border="0" align="center">
    
	<input name="rate_id" type="hidden" id="rate_id" value="<%=rs.getInt("rate_id")%>">
    <tr>
      <td>Parking Id </td>
      <td><input name="parking_id" type="text" id="parking_id" value="<%=rs.getInt("parking_id")%>" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Rate</td>
      <td><input name="rate" type="text" id="rate" value="<%=rs.getString("rate")%>" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Monthly Pass </td>
      <td><input name="monthly_pass" type="text" id="monthly_pass" value="<%=rs.getString("monthly_pass")%>" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Status</td>
      <td><input name="status" type="text" id="status" value="<%=rs.getString("status")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td colspan="2">      <div align="center">
        <input type="submit" name="Submit" value="Submit" class="btn btn-primary">
        <input type="reset" name="Reset" value="Reset" class="btn btn-danger">
      </td>
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
     

