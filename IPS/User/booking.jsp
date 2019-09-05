
            <!-- Page Content -->
            <div id="page-content">
                <!-- END Breadcrumb -->

                <!-- General Forms Block -->
                <div class="block block-themed block-last">
                    <!-- General Forms Title -->
                    <div class="block-title">
                        <h4> Booking </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>

<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="s" class="ips.dbconnect"/>
<jsp:getProperty name="s" property="conn"/><%

Date d1=new Date();
int dd=d1.getDate();
int mm=d1.getMonth()+1;
int yy=d1.getYear()+1900;
String sd=dd+"/"+mm+"/"+yy;
String user=session.getAttribute("uname").toString();
String pname=session.getAttribute("p_name").toString();
String pid=request.getParameter("pid");
String slno=request.getParameter("slno");

ResultSet rs=s.stmt.executeQuery("select * from parking_chart pc,parking_rates pr where pc.parking_id="+pid+"  and pc.parking_id=pr.parking_id ");

rs.next();
%>
<body>
<form name="form1" method="post" action="booking_insert.jsp">
  <table width="399" border="1" align="center">
    <tr>
      <th colspan="2" scope="col">Parking Bookings Name: <%=pname%>  </th>
    </tr>
    <tr>
      <td width="207">Parking Id </td>
      <td width="176"><input name="pid" type="text" id="pid" value="<%=pid%>" readonly=""></td>
    </tr>
    <tr>
      <td>Slote Number </td>
      <td><input name="slno" type="text" id="slno" value="<%=slno%>" readonly=""></td>
    </tr>
    <tr>
      <td>Rate Per Parking(4 hours) </td>
      <td><input name="rate" type="text" id="rate" value="<%=rs.getString("rate")%>" readonly=""></td>
    </tr>
    <tr>
      <td>Book Date </td>
      <td><input name="date" type="text" id="date" value="<%=sd%>" readonly=""></td>
    </tr>
    <tr>
      <td>Book By </td>
      <td><input name="booked_by" type="text" id="booked_by" value="<%=user%>" readonly=""></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit">
        <input type="reset" name="Reset" value="Reset">
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
