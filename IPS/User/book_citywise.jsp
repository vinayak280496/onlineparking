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
					<form name="form1" method="post" action="booking_chart_view.jsp">
	    <div align="center">Find Your City 
	      <select name="city" id="city">
	          <option>select city</option>
	<%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="s" class="ips.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
	<%
ResultSet rs=s.stmt.executeQuery("select * from  parking_details ");
while(rs.next())
{
int us=rs.getInt("parking_id");
			 %>
			 <option value="<%=us%>"><%=rs.getString("city")%></option> 
	          
			  <%
			  }
			  %>
			  </select>
	      <input type="submit" name="Submit" value="SEARCH">
	    </div>
	  </form>
</div>
                    <!-- END General Forms Content -->
                </div>
                <!-- END General Forms Block -->
            </div>
            <!-- END Page Content -->
			
			
 <jsp:include page="footer.jsp"></jsp:include>
