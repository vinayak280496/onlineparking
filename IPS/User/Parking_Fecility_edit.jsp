
 <%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
String id=request.getParameter("edit");
ResultSet rs=d.stmt.executeQuery("select *from parking_fecility where parking_fecility_id="+id+"");
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
                        <h4>Parking Fecility </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="Parking_Fecility_update.jsp" id="formID">
  <table width="325" height="250" border="0" align="center">
    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>
	<input name="parking_fecility_id" type="hidden" id="parking_fecility_id" value="<%=rs.getInt("parking_fecility_id")%>">
    <tr>
      <td>Parking ID</td>
      <td><input name="parking_id" type="text" id="parking_id" value="<%=rs.getInt("parking_id")%>"class="validate[required,custom[onlyNumber]"></td>
    </tr>
    <tr>
      <td>Fecility Name</td>
      <td><input name="fecility_name" type="text" id="fecility_name" value="<%=rs.getString("fecility_name")%>"class="validate[required,custom[onlyLetter]"></td>
    </tr>
    <tr>
      <td>Discription</td>
      <td><input name="discription" type="text" id="discription" value="<%=rs.getString("discription")%>"class="validate[required,custom[onlyLetter]"></td>
    </tr>
    <tr>
      <td colspan="2">      <input type="submit" name="Submit" value="Submit" class="btn btn-primary">
      <input type="reset" name="Reset" value="Reset" class="btn btn-danger"></td>
    </tr>
  </table>
</form>
</body>
</html>
