
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
					<form name="form1" method="post" action="changepn.jsp">
  <table width="304" height="250" align="center">
    <tr>
      <td>Old Password </td>
      <td><input name="op" type="text" id="op"></td>
    </tr>
    <tr>
      <td>New Password </td>
      <td><input name="np" type="text" id="np"></td>
    </tr>
    <tr>
      <td>Confirm Password </td>
      <td><input name="cp" type="text" id="cp"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit"  class="btn btn-primary">      
        <input type="submit" name="Submit" value="Clear"  class="btn btn-danger">
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
