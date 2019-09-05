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
                        <h4> Parking  Fecility</h4>
                    </div>
                    <!-- END General Forms Title -->

                    <!-- General Forms Content -->
                    <div class="block-content">
					
					<jsp:include page="val.jsp"></jsp:include>
<form name="form1" method="post" action="Parking_Fecility_insert.jsp" id="formID">
  <table width="325" height="250" align="center">
    <tr>
      <td colspan="2"><div align="center">Parking Fecility </div></td>
    </tr>
    <tr>
      <td width="103">Parking ID</td>
      <td width="196"><input name="parking_id" type="text" id="parking_id" class="validate[required,custom[onlyNumber]"></td>
    </tr>
    <tr>
      <td>Fecility Name</td>
      <td><input name="fecility_name" type="text" id="fecility_name" class="validate[required,custom[onlyLetter]"></td>
    </tr>
    <tr>
      <td>Discription</td>
      <td><input name="discription" type="text" id="discription" class="validate[required,custom[onlyLetter]"></td>
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