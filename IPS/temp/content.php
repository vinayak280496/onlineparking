
<?php session_start(); ?>

<?php
	
		include('dbconnect.php');
		$sql = "select * from login where uname ='".$_SESSION['uname']."' and pwd='".$_POST['old_pass']."'";
		//echo $sql;
		$res = mysql_query($sql);
		if(mysql_num_rows($res)>0)
		{
			$sql1 = "update login set pwd = '".$_POST['new_pass']."' where uname ='".$_SESSION['uname']."'";
			$res1 = mysql_query($sql1);
			?>
				<script>
					alert('Successfully updated your password');
					document.location="home.php";
				</script>
			<?php
		} else
		{
			?>
				<script>
					alert('Failed to update your password');
					//document.location="change_password.php";
				</script>
			<?php
		}
	
?>


<script type="text/javascript" language="javascript">
//Script to check the user is already exist using AJAX
function checkPassword()
{
	var url = "checkPassword.php?password=";
	var old_pass = document.getElementById("old_pass").value;
	if(old_pass == "") 
	{ 
		document.getElementById('hint').innerHTML = "<input type=\"hidden\" id=\"status\" name=\"status\" value=\"\" />Old password cannot be blank";
		document.getElementById('hint').style.color="red";
		return;
	}
	url += escape(old_pass);
	div="hint";
	doAction(url,div);
}
</script>
<script language="javascript" src="../images/ajax.js"></script>

<style>
/* classes for validator */
	.tfvHighlight
		{font-weight: bold; color: red;}
	.tfvNormal
		{font-weight: normal;	color: black;}
</style>
<script language="JavaScript" src="../images/validator.js"></script>
<script>
// form fields description structure
var a_fields = {
	/*'title': {
		'l': 'Title',  // label
		'r': false,    // required
		'f': 'alpha',  // format (see below)
		't': 't_title',// id of the element to highlight if input not validated
		
		'm': null,     // must match specified form field
		'mn': 2,       // minimum length
		'mx': 10       // maximum length
	},*/
	'old_pass':{'l':'Old Password','r':true,'f':'','t':'t_old_pass'},
	'new_pass':{'l':'New Password','r':true,'f':'','t':'t_new_pass'},
	'c_new_pass':{'l':'Confirm Password','r':true,'f':'','t':'t_c_new_pass','m':'new_pass'},
	'status':{'l':'Old Password','r':true,'f':'','t':'t_old_pass'}
},
	
o_config = {
	'to_disable' : ['Submit', 'Reset'],
	'alert' : 1
}

// validator constructor call
var v = new validator('password', a_fields, o_config);	
</script>	


<?php include('metatags.php');   ?>


<div class="tab-content">
                        <!-- Account Tab Content -->
                        <div class="tab-pane active" id="modal-user-account-account">
                            <form action="content.php" method="post" class="form-horizontal" onsubmit="return false;">
                              
                                <h4 class="sub-header">Change Password</h4>
                                <div class="control-group">
                                    <label class="control-label" for="modal-account-pass">Current Password</label>
                                    <div class="controls">
                                        <input type="password" id="old_pass" name="old_pass">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="modal-account-newpass">New Password</label>
                                    <div class="controls">
                                        <input type="password" id="new_pass" name="new_pass">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="modal-account-newrepass">Retype New Password</label>
                                    <div class="controls">
                                        <input type="password" id="c_new_pass" name="c_new_pass">
                                    </div>
                                </div>
						<input type="submit" value="Submit" name="submit" />
                            </form>
                        </div>
                        <!-- END Account Tab Content -->

          