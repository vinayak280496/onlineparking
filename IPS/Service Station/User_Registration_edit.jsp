  <%@page import="java.sql.*"%>
  <%@page import="ips.dbconnect"%>
  <jsp:useBean id="d" class="ips.dbconnect"/>
  <jsp:getProperty name="d" property="conn"/>
  <div align="center">
    <%
String id=request.getParameter("edit");
ResultSet rs=d.stmt.executeQuery("select *from user_registration where user_id="+id+"");
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
                        <h4>User Registration </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="User_Registration_update.jsp" id="formID">

<table width="317" border="1">
 
  <input name="user_id" type="hidden" id="user_id" value="<%=rs.getInt("user_id")%>">
  <tr>
    <td width="115">Name</td>
    <td width="186"><input name="name" type="text" id="name" value="<%=rs.getString("name")%>" class="validate[required,custom[onlyLetter]]"></td>
  </tr>
  <tr>
    <td>Address</td>
    <td><input name="address" type="text" id="address" value="<%=rs.getString("address")%>" class="validate[required]"></td>
  </tr>
  <tr>
    <td>Contact No </td>
    <td><input name="contact_no" type="text" id="contact_no" value="<%=rs.getString("contact_no")%>" class="validate[required,custom[onlyNumber]]"></td>
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
    <td>User Type </td>
    <td><input name="user_type" type="text" id="user_type" value="<%=rs.getString("user_type")%>" class="validate[required,custom[onlyLetter]]"></td>
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