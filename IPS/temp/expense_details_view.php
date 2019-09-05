<?php include('metatags.php');   ?>
<?php include('header.php');   ?>
<?php include('sidebar.php');   ?>


<script src="abc/jquery-1.8.2.min.js"></script>
	<link rel="stylesheet" href="abc/bootstrap.min.css" media="screen">
    <!-- DataTables -->
    <script src="abc/datatables/jquery.dataTables.min.js"></script>
    <script src="abc/datatables/TableTools/js/TableTools.min.js"></script>
    <script src="abc/datatables/dataTables.bootstrap.js"></script>
    <script src="abc/datatables/jquery.dataTables.columnFilter.js"></script>
    
    <!-- Demo Scripts -->
    <script src="abc/dataTables.js"></script>

<link href="images/grid_style.css"" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="images/dhtmlgoodies_calendar.css?random=20051112" media="screen" />
<script type="text/javascript" src="images/dhtmlgoodies_calendar.js?random=20060118"></script>
            <!-- Page Content -->
            <div id="page-content">
    
	            <form name="form1" method="post" action="search.php">
                   Start Date 
                   <input name="start_date" type="text" id="start_date" onFocus="displayCalendar(this,'yyyy-mm-dd',this)" value="<?php echo $_POST['start_date'];?>"> 
                   End Date 
                   <input name="end_date" type="text" id="end_date" onFocus="displayCalendar(this,'yyyy-mm-dd',this)" value="<?php echo $_POST['end_date'];?>">
                   <input type="submit" name="Submit" value="Search">                
                </form>
				
				 <form name="form1" method="post" action="search1.php">
                   Enter Month 
                   <select name="month" id="month" onchange="getAttendance();">
					<option value="01" <?php if($mon == "01") echo "selected=\"selected\"" ?>>January</option>
					<option value="02" <?php if($mon == "02") echo "selected=\"selected\"" ?>>February</option>
					<option value="03" <?php if($mon == "03") echo "selected=\"selected\"" ?>>March</option>
					<option value="04" <?php if($mon == "04") echo "selected=\"selected\"" ?>>April</option>
					<option value="05" <?php if($mon == "05") echo "selected=\"selected\"" ?>>May</option>
					<option value="06" <?php if($mon == "06") echo "selected=\"selected\"" ?>>June</option>
					<option value="07" <?php if($mon == "07") echo "selected=\"selected\"" ?>>July</option>
					<option value="08" <?php if($mon == "08") echo "selected=\"selected\"" ?>>August</option>
					<option value="09" <?php if($mon == "09") echo "selected=\"selected\"" ?>>September</option>
					<option value="10" <?php if($mon == "10") echo "selected=\"selected\"" ?>>October</option>
					<option value="11" <?php if($mon == "11") echo "selected=\"selected\"" ?>>November</option>
					<option value="12" <?php if($mon == "12") echo "selected=\"selected\"" ?>>December</option>
					</select>
					 
                   Enter Year
                   <select name="year" id="year" onchange="getAttendance();">
					<option value="2010" <?php if($year == "2010") echo "selected=\"selected\"" ?>>2010</option>
					<option value="2011" <?php if($year == "2011") echo "selected=\"selected\"" ?>>2011</option>
					<option value="2012" <?php if($year == "2012") echo "selected=\"selected\"" ?>>2012</option>
					<option value="2013" <?php if($year == "2013") echo "selected=\"selected\"" ?>>2013</option>
					<option value="2014" <?php if($year == "2014") echo "selected=\"selected\"" ?>>2014</option>
					<option value="2015" <?php if($year == "2015") echo "selected=\"selected\"" ?>>2015</option>
					<option value="2016" <?php if($year == "2016") echo "selected=\"selected\"" ?>>2016</option>
					<option value="2017" <?php if($year == "2017") echo "selected=\"selected\"" ?>>2017</option>
					<option value="2018" <?php if($year == "2018") echo "selected=\"selected\"" ?>>2018</option>
					<option value="2019" <?php if($year == "2019") echo "selected=\"selected\"" ?>>2019</option>
					<option value="2020" <?php if($year == "2020") echo "selected=\"selected\"" ?>>2020</option>
					<option value="2021" <?php if($year == "2021") echo "selected=\"selected\"" ?>>2021</option>
					<option value="2022" <?php if($year == "2022") echo "selected=\"selected\"" ?>>2022</option>
					<option value="2023" <?php if($year == "2023") echo "selected=\"selected\"" ?>>2023</option>
					<option value="2024" <?php if($year == "2024") echo "selected=\"selected\"" ?>>2024</option>
					<option value="2025" <?php if($year == "2025") echo "selected=\"selected\"" ?>>2025</option>
					</select>
                   <input type="submit" name="Submit" value="Search">                
                </form>
	        
                           <!-- With Borders Style -->
                <h4 class="page-header">Expenses Details
				<div align="right"><a href="expense_details_form.php" title="Add New"><img src="img/loading.gifs/loading19@2x.gif"></a></div></h4>

		
    
				
				<div class="block-section">
                <!-- With Borders Section -->
               <table class="table table-bordered">
                        <thead>
                            <tr>


                               <th class="span1 text-center">#</th>
									<th>Expenditure</th>
									<th>Date</th>
									<th>Description</th>
									<th>Amount</th>
									
									
									<th class="span1 text-center"><i class="icon-bolt"></i></th>
                            </tr>
                        </thead>

      			<?php
					  $slno=0;
					  
					  include('dbconnect.php');
					  $sql="select ed.expense_date,ed.description,ed.amount,e.title from expense_details ed,expense e where ed.expense_id=e.expense_id";
					  $res=mysql_query($sql);
					   while($row=mysql_fetch_array($res))
					  
					  {
					  
					  $slno=$slno+1;
					  if($slno%2==1)
					 ?>

                        <tbody>
                            <tr <?php if($slno%2==0) echo 'bgcolor="#E4EEE5"';?>>
								<td class="span1 text-center"><?php echo $slno; ?></td>
								<td class="span1 text-center"><?php echo $row['title'];  ?></td>
								<td class="span1 text-center"><?php echo $row['expense_date'];  ?></td>
								<td class="span1 text-center"><?php echo $row['description'];  ?></td>
								<td class="span1 text-center"><?php echo $row['amount'];  ?></td>
							   <td>
                                    <div class="btn-group">
                                        <a href="expense_details_edit.php?id=<?php echo $row['expense_details_id']; ?>" data-toggle="tooltip" title="Edit" class="btn btn-mini btn-success"><i class="icon-pencil"></i></a>
                                        <a onClick="return confirm('Are you sure you want to delete');" href="expense_details_delete.php?id=<?php echo $row['expense_details_id'];?>" data-toggle="tooltip" title="Delete" class="btn btn-mini btn-danger"><i class="icon-remove"></i></a>
                                    </div>
                              </td>
                            </tr>
							
                        </tbody>
						
						<?php
						}
						?>
						
                    </table>
                </div>
                <!-- END With Borders Section -->
                <!-- END With Borders Style -->
            </div>
            <!-- END Page Content -->
			
<?php include('footer.php');   ?>
