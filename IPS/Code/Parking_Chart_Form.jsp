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
                        <h4> Parking Chart </h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="Parking_Chart_insert.jsp" id="formID">
  <table width="325" height="250" align="center">
    <tr>
      <td colspan="2"><div align="center">Parking Chart </div></td>
    </tr>
    <tr>
      <td width="104">Parking ID </td>
      <td width="171"><input name="parking_id" type="text" id="parking_id" class="validate[required]"></td>
    </tr>
    <tr>
      <td>Slot No </td>
      <td><input name="slot_no" type="text" id="slot_no" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Status</td>
      <td><input name="status" type="text" id="status" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td height="83" colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit" class="btn btn-primary">
         <input type="reset" name="Reset" value="Reset"  class="btn btn-danger">
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


