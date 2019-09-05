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
                        <h4> Parking Rates</h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="Parking_Rates_insert.jsp" id="formID">
  <table width="325" height="250" border="0" align="center">
    <tr>
      <td colspan="2"><div align="center">Parking Rates </div></td>
    </tr>
    <tr>
      <td width="112">Parking Id </td>
      <td width="195"><input name="parking_id" type="text" id="parking_id" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Rate</td>
      <td><input name="rate" type="text" id="rate" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Monthly Pass </td>
      <td><input name="monthly_pass" type="text" id="monthly_pass" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Status</td>
      <td><input name="status" type="text" id="status" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td colspan="2">      <div align="center">
        <input type="submit" name="Submit" value="Submit" class="btn btn-primary">
        <input type="reset" name="Reset" value="Reset" class="btn btn-danger">
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
