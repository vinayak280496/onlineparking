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
                        <h4> Parking Chart </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="parking_chart_form1.jsp" id="formID">
  <table width="325" height="250" align="center">
    <tr>
      <td colspan="2"><div align="center">Parking Chart </div></td>
    </tr>
    <tr>
      <td width="104">Parking ID </td>
      <td width="171"><select name="park_id" id="park_id">
        <option>--select parking id--</option>
        <%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="s" class="ips.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
 
        <%
   ResultSet rs=s.stmt.executeQuery("select * from parking_details");
   while(rs.next())
   {
   
%>
        <option value="<%=rs.getInt("parking_id")%>"> <%=rs.getString("parking_name")%></option>
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
      <td height="83" colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit" class="btn btn-primary">
         <input type="reset" name="Reset" value="Reset"  class="btn btn-danger">
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


