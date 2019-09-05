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
                        <h4>Booked Parking Slots </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>


	
<form id="formID" name="form1" method="post" action="parking_chart_insert.jsp">
 
  <table width="283" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">Parking slots </div></td>
    </tr>
	  <%@page import="java.sql.*"%>
<%@page import="ips.dbconnect" %>
<jsp:useBean id="d" class="ips.dbconnect"/>
<jsp:getProperty name="d" property="conn"/>
<%
String p=request.getParameter("park_id");
//String sl=request.getParameter("sl_no");
session.setAttribute("pid",p);

String pid=request.getParameter("slot_no");
session.setAttribute("slno",pid);
int zs=Integer.parseInt(pid);
int z;
for(z=0;z<zs;z++)
{


%>

    <tr>
      <td>Slot <%=z+1%> </td>
      <td><input class="validate[required,custom[onlyNumber]]"name="p_slot<%=z%>" type="text" id="p_slot<%=z%>"></td>
    </tr>
	<%
	}
	%>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit">
        <input type="reset" name="Reset" value="Reset">
      </div></td>
    </tr>
  </table>
  <p>&nbsp;  </p>
</form>
</div><!--/.span-->
					</div><!--/.row-fluid-->
				</div><!--/.page-content-->
               <jsp:include page="settings.jsp"></jsp:include>   
              
			</div><!--/.main-content-->
		</div><!--/.main-container-->
<jsp:include page="scripts.jsp"></jsp:include>  