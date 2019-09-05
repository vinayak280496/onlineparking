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
                        <h4> Parking Chrat </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include><%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
  <%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
String id=request.getParameter("edit");
ResultSet rs=d.stmt.executeQuery("select *from parking_chart where parcking_chart_id="+id+"");
rs.next();
%>
<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="Parking_Chart_update.jsp" id="formID">
  <table width="291" border="1">
    <tr>
      <td colspan="2">Parking Chart </td>
    </tr>
	<input name="parcking_chart_id" type="hidden" id="parcking_chart_id" value="<%=rs.getInt("parcking_chart_id")%>">
    <tr>
      <td width="104">Parking ID </td>
      <td width="171"><input name="parking_id" type="text" id="parking_id" value="<%=rs.getString("parking_id")%>" class="validate[required]"></td>
    </tr>
    <tr>
      <td>Slot No </td>
      <td><input name="slot_no" type="text" id="slot_no" value="<%=rs.getInt("slot_no")%>" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Status</td>
      <td><input name="status" type="text" id="status" value="<%=rs.getString("status")%>" class="validate[required,custom[onlyLetter]]"></td>
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

