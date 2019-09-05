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
                        <h4>User Registration</h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="User_Registration_insert.jsp" id="formID">

  <div align="center">
    <table width="366">
      <tr>
        <td colspan="2"><div align="center">User Registration </div></td>
      </tr>
      <tr>
        <td width="115">Name</td>
        <td width="235"><input name="name" type="text" id="name" class="validate[required,custom[onlyLetter]]"></td>
      </tr>
      <tr>
        <td>Address</td>
        <td><input name="address" type="text" id="address" class="validate[required]"></td>
      </tr>
      <tr>
        <td>Contact No </td>
        <td><input name="contact_no" type="text" id="contact_no" class="validate[required,custom[onlyNumber]]"></td>
      </tr>
      <tr>
        <td>City</td>
        <td><input name="city" type="text" id="city" class="validate[required,custom[onlyLetter]]"></td>
      </tr>
      <tr>
        <td>State</td>
        <td><input name="state" type="text" id="state" class="validate[required,custom[onlyLetter]]"></td>
      </tr>
      <tr>
        <td>User Type </td>
        <td><input name="user_type" type="text" id="user_type" class="validate[required,custom[onlyLetter]]"></td>
      </tr>
      <tr>
        <td height="43" colspan="2"><div align="center">
          <input type="submit" name="Submit" value="Submit" class="btn btn-primary">
          <input type="reset" name="Reset" value="Reset" class="btn btn-danger">
        </div></td>
      </tr>
    </table>
  </div>
</form>
 </div>
                    <!-- END General Forms Content -->
                </div>
                <!-- END General Forms Block -->
            </div>
            <!-- END Page Content -->
			
			
 <jsp:include page="footer.jsp"></jsp:include>
