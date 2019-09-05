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
                        <h4> Service Station Details </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="Service_station_details_insert.jsp" id="formID">
  <table width="325" height="250" align="center">
    <tr>
      <td colspan="2">Service Station Details </td>
    </tr>
    <tr>
      <td width="181">Service Station Name </td>
      <td width="144"><input name="ser_stan_name" type="text" id="ser_stan_name" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Service Station Type</td>
      <td><input name="ser_stan_type" type="text" id="ser_stan_type" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><input name="address" type="text" id="address" class="validate[required]"></td>
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
      <td>Contact No </td>
      <td><input name="contact_no" type="text" id="contact_no" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Fecilities</td>
      <td><input name="fecilities" type="text" id="fecilities" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" name="Submit" value="Submit" class="btn btn-primary">
      <input type="reset" name="Reset" value="Reset"  class="btn btn-danger"></td>
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

