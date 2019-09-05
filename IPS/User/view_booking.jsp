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
                        <h4> View Booking </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>


<table width="696" border="1" align="center" class="table-striped"  >
  <tr>
    <td width="56"><div align="center"><strong>Parking Booking ID </strong></div></td>
    <td width="72"><div align="center"><strong>Parking ID </strong></div></td>
	<td width="168"><div align="center"><strong>Parking Name </strong></div></td>
    <td width="30"><div align="center"><strong>Slot No </strong></div></td>
    <td width="50"><div align="center"><strong>Rate</strong></div></td>
    <td width="122"><div align="center"><strong>Booked Date</strong></div></td>
	<td width="152"><div align="center"><strong>Booked By</strong></div></td>
    
  </tr>
  <%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="s" class="ips.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String user=session.getAttribute("uname").toString();
ResultSet rs=s.stmt.executeQuery("select * from booked_parking_slots ps,parking_details pd where b_by='"+user+"' and ps.parking_id=pd.parking_id");
while(rs.next())
{
int us=rs.getInt("booking_id");
%>
  <tr>
    <td><div align="center"><%=us%></div></td>
    <td><div align="center"><%=rs.getInt("parking_id")%></div></td>
	<td><div align="center"><%=rs.getString("parking_name")%></div></td>
    <td><div align="center"><%=rs.getInt("slot_no")%></div></td>
    <td><div align="center"><%=rs.getInt("rate")%></div></td>
    <td><div align="center"><%=rs.getString("b_date")%></div></td>
	<td><div align="center"><%=rs.getString("b_by")%></div></td>
    
  </tr>
  <%
  
  }
  ResultSet rsz=s.stmt.executeQuery("select sum(rate) from booked_parking_slots where b_by='"+user+"'");
rsz.next();

int r=rsz.getInt(1);
  %>
  Total Amount: <%=r%>
</table>
</div><!--#nav-search-->
</div><!--/.span-->
					</div><!--/.row-fluid-->
				</div><!--/.page-content-->
               <jsp:include page="settings.jsp"></jsp:include>   
              
			</div><!--/.main-content-->
		</div><!--/.main-container-->
<jsp:include page="scripts.jsp"></jsp:include>  
</div>
                    <!-- END General Forms Content -->
                </div>
                <!-- END General Forms Block -->
            </div>
            <!-- END Page Content -->
			
			
 <jsp:include page="footer.jsp"></jsp:include>