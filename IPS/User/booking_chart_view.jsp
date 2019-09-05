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
                        <h4> Book Citywise </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
				  <table width="455" border="1" align="center">
  <tr>
    <th width="89"><div align="center">Parking ID </div></th>
    <th width="91"><div align="center">Slot Number </div></th>
    <th width="155"><div align="center">Status </div></th>
	<th width="155"><div align="center">Action </div></th>
  </tr>
  
  <%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="s" class="ips.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%



String city=request.getParameter("city");
ResultSet rszs=s.stmt.executeQuery("select * from parking_chart pc,parking_details pd where pc.parking_id="+city+" and pc.parking_id=pd.parking_id ");
if(rszs.next())
{
ResultSet rs=s.stmt.executeQuery("select * from parking_chart pc,parking_details pd where pc.parking_id="+city+" and pc.parking_id=pd.parking_id ");

while(rs.next())
{

String status=rs.getString("status");
if(status.equals("booked"))
{



%>

  <tr>
    <td bgcolor="#FF0000"> <%=rs.getInt("parking_id")%></td>
    <td bgcolor="#FF0000"><%=rs.getInt("slot_no")%></td>
    <td bgcolor="#FF0000"><font color="white"><%=status%></font></td>
  </tr>
  <%
  }
  else
  {
  int pid=rs.getInt("parking_id");
  int sno=rs.getInt("slot_no");
  %>
  <tr>

    <td><%=pid%></td>
    <td><%=sno%></td>
    <td bgcolor="#00FF00"><font color="green"><%=status%></font></td>
    <td width="83" bgcolor="#00FF00"><font color="green"> <a href="booking.jsp?pid=<%=pid%>&slno=<%=sno%>">Book Now</font></a></td>
  </tr>
  <%
  }
  
  }
  
 %>


		<%
		 ResultSet rsz=s.stmt.executeQuery("select * from parking_chart pc,parking_details pd where pc.parking_id="+city+" and pc.parking_id=pd.parking_id  ");
  rsz.next();
  String cit=rsz.getString("city");
  String p_name=rsz.getString("parking_name");
  //String p_f=rsz.getString("fecility_name");
 session.setAttribute("p_name",p_name);
  %>
  City Name:&nbsp; <%=cit%>&nbsp;&nbsp;&nbsp;&nbsp;
  Parking Name: &nbsp;<%=p_name%>
  
  </table>
</div>
</div><!--/.span-->
					</div><!--/.row-fluid-->
				</div><!--/.page-content-->
               <jsp:include page="settings.jsp"></jsp:include>   
              
			</div><!--/.main-content-->
		</div><!--/.main-container-->
		<jsp:include page="scripts.jsp"></jsp:include>  
<%
}
else
{
%>
<script>
alert("sorry city parking not available");
document.location="home.jsp";
</script>
<%
}

%>
</div>
                    <!-- END General Forms Content -->
                </div>
                <!-- END General Forms Block -->
            </div>
            <!-- END Page Content -->
			
			
 <jsp:include page="footer.jsp"></jsp:include>
