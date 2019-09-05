
            <!-- Footer -->
            <footer>
                <div class="pull-right">
                    Design by <strong><a href="http://www.vwingsgroup.com" target="_blank">VENTURE WINGS GROUP</a></strong>
                </div>
                <div class="pull-left">
                    <span id="year-copy"></span> &copy; <strong><a href="http://www.vwingsgroup.com" target="_blank">DIGITAL DIARY</a></strong>
                </div>
            </footer>
            <!-- END Footer -->
        </div>
        <!-- END Page Container -->

        <!-- Scroll to top link, check main.js - scrollToTop() -->
        <a href="#" id="to-top"><i class="icon-chevron-up"></i></a>

        <!-- User Modal Account, appears when clicking on 'User Settings' link found on user dropdown menu (header, top right) -->
        <div id="modal-user-account" class="modal hide fade">
            <!-- Modal Body -->
            <div class="modal-body remove-padding">
                <!-- Modal Tabs -->
                <div class="block-tabs">
                    <div class="block-options">
                        <a href="javascript:void(0)" class="btn btn-danger" data-dismiss="modal"><i class="icon-remove"></i></a>
                    </div>
                    <ul class="nav nav-tabs" data-toggle="tabs">
                        <li class="active"><a href="#modal-user-account-account"><i class="icon-cog"></i> Account</a></li>
                       
						
                    </ul>
              <?php

   include("dbconnect.php");
$user_name=$_SESSION["uname"];
  $sql="select * from login where uname='$user_name'";
  //echo $sql;
  $res=mysql_query($sql);
  $row=mysql_fetch_array($res);
  ?>
		   
		            <div class="tab-content">
                        <!-- Account Tab Content -->
                        <div class="tab-pane active" id="modal-user-account-account">
                            <form action="index.html" method="post" class="form-horizontal" onsubmit="return false;">
                                <div class="control-group">
                                    <label class="control-label" for="modal-account-username">Username</label>
                                    <div class="controls">
                                        <input type="text" id="modal-account-username" name="modal-account-username" value="<?php echo $row['uname'];  ?>" class="disabled" disabled>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="modal-account-email">Usertype</label>
                                    <div class="controls">
                                        <input type="text" id="modal-account-email" name="modal-account-email" value="<?php echo $row['utype'];  ?>">
                                    </div>
                                </div>
                               
                            </form>
                        </div>
                        <!-- END Account Tab Content -->
     
       
	                </div>
                </div>
                <!-- END Modal Tabs -->
            </div>
            <!-- END Modal Body -->

            <!-- Modal footer -->
            <div class="modal-footer">
                <button class="btn btn-success" data-dismiss="modal"><i class="icon-save"></i> Save</button>
            </div>
            <!-- END Modal footer -->
        </div>
        <!-- END User Modal Settings -->

        <!-- Excanvas for Flot (Charts plugin) support on IE8 -->
        <!--[if lte IE 8]><script src="js/helpers/excanvas.min.js"></script><![endif]-->

        <!-- Get Jquery library from Google ... -->
        <script src="googleapis.js"></script>
        <!-- ... but if something goes wrong get Jquery from local file -->
        <script>!window.jQuery && document.write(unescape('%3Cscript src="js/vendor/jquery-1.9.1.min.js"%3E%3C/script%3E'));</script>

        <!-- Bootstrap.js -->
        <script src="js/vendor/bootstrap.min.js"></script>

        <!--
        Include Google Maps API for global use.
        If you don't want to use  Google Maps API globally, just remove this line and the gmaps.js plugin from js/plugins.js (you can put it in a seperate file)
        Then iclude them both in the pages you would like to use the google maps functionality
        -->
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>

        <!-- Jquery plugins and custom javascript code -->
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>