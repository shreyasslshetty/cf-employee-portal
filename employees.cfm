<cfparam name="url.status" default="P">
	
<cfquery name="GetEmployeeInfo" datasource="koalaSQL">
         SELECT ID, ADMIN_USER, ADMIN_PASS, IS_SUPER, IS_CELERANT, LAST_FAILED_DTE, DLU
         FROM web_admin_users WHERE VISIBLE_REC = 1
</cfquery>
	

<!doctype html>
<html>
	<head>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<!-- <link rel="shortcut icon" href="../../assets/ico/favicon.png">-->
		<title>CTC Employee Portal</title>
		<!-- Bootstrap -->
    	<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
		
		
		<style type="text/css">
        h3 span {
            font-size: 22px;
        }
        h3 input.search-input {
            width: 300px;
            margin-left: auto;
            float: right
        }
        .mt32 {
            margin-top: 32px;
        }
    </style>
		
	</head>
	<body>
		<div class="navbar navbar-inverse navbar-fixed-top navbar-light bg-light">
		
		<div class="container">
		
		<div class="navbar-header">
			<!-- button below is here for responsive UI mobile view -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			
				<a href="http://192.168.98.108/employee/index.cfm"><img style="margin-top:2%; padding-right:2%;" src="images/brand-logo.png" width="40" height="50" class="d-inline-block align-top" alt=""></a>
				
				<!--<a class="navbar-brand" href="#">CTC Employee Board</a>-->
				
		</div>
		
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				
				<!---<li class="active"><a href="http://192.168.98.108/employee/index.cfm">Home</a></li>--->
				
				<li class="active"><a href="#">Portal</a></li>
				<li class="dropdown"><a href="#resources" class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="http://192.168.98.108/employee/employees.cfm">View Employees</a></li>
						<li><a href="http://192.168.98.108/employee/add_emp.cfm">Add New Employee</a></li>
						<li><a href="http://192.168.98.108/employee/upd_emp.cfm">Update Employee</a></li>
						<li><a href="http://192.168.98.108/employee/del_emp.cfm">Delete Employee</a></li>
						
						<!--
						<li class="divider"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">One more separated link</a></li>
						-->
					</ul>
				</li>
			</ul>
			
			
		
		</div><!--/.navbar-collapse -->
		</div>
		</div>

		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
		

		<div class="container" style="margin-top:5%; background-color:#F2F2F2;">
		<!-- <i class="icon-calendar icon-large"> -->
			<center><h1 style="color:#669bc9;"></i>Employee List<!-- <i class="icon-calendar-empty"></i> --></h1></center><br>
			<center><p style="color:#00437f">View complete record for employees here.</p></center>
			<!--<p>Choose from the Workspace Tools Below</p>-->
			<!--<p><a class="btn btn-primary btn-large">RSVP &raquo;</a></p>-->
			</div> <!-- /container -->
		</div>

		<div class="body-content">

			<div class="container">

			<div class="row">
			
			<div class="col-lg-12" style="border: solid 1px grey; margin-bottom: 10%;">
				
					<h2 style="color:#669bc9;">Employee Records</h2><br>
				
				
				<cfif GetEmployeeInfo.recordcount gt 0>
					
					 <h3>
						 
            				<input style="border: solid black 1px;" type="search" placeholder="Search Employees..." class="form-control search-input" data-table="customers-list"/>
						 
        			</h3>


						<table id="emp_list" class="table table-striped mt32 customers-list" style="width: 100%; text-align: center; border: solid 1px black;">
							
							
							<thead>
							
									<tr style="text-align: center; border: solid 1px black;"> <br>
										
										
									<th style="text-align: center; border: solid 1px black; color:#00437f">ID</th>
									<th style="text-align: center; border: solid 1px black; color:#00437f">Admin Username</th>
									<th style="text-align: center; border: solid 1px black; color:#00437f">Admin Password</th>
									<th style="text-align: center; border: solid 1px black; color:#00437f">Super User</th>
									<th style="text-align: center; border: solid 1px black; color:#00437f">Celerant User</th>
									<th style="text-align: center; border: solid 1px black; color:#00437f">Last Failed Date</th>
									<th style="text-align: center; border: solid 1px black; color:#00437f" >Date Last Used</th>
									<th style="text-align: center; border: solid 1px black; color:#00437f">Edit</th>
									<th style="text-align: center; border: solid 1px black; color:#00437f">Delete</th>
								
							
									</tr>
							
							
							
							</thead>
							
							
							<tbody id="emp_tab">
							
									<cfoutput query="GetEmployeeInfo">
										
									<tr>
						
										<td style="text-align: center; border: solid 1px black;">#ID#</td>
										<td style="text-align: center; border: solid 1px black;">#ADMIN_USER#</td>
										<td style="text-align: center; border: solid 1px black;">#ADMIN_PASS#</td>
										<td style="text-align: center; border: solid 1px black;">#IS_SUPER#</td>
										<td style="text-align: center; border: solid 1px black;">#IS_CELERANT#</td>
										<td style="text-align: center; border: solid 1px black;">#LAST_FAILED_DTE#</td>
										<td style="text-align: center; border: solid 1px black;">#DLU#</td>
										
										<td style="text-align: center; border: solid 1px black;">
											
											<a href="http://192.168.98.108/employee/upd_emp.cfm?emp_id=#ID#&status=#url.status#"><img src="images/update-table.png"></a> </td>
										
										<td style="text-align: center; border: solid 1px black;">
											
											<a href="http://192.168.98.108/employee/del_emp.cfm?emp_id=#ID#" onclick="doAjax(this.href);"><img src="images/delete-table.png"></a> </td>
										
									</tr> 
										
										
										
										
									</cfoutput> 
							
							</tbody>
							
						
   
				
						</table>
					
					
					
					
					
					
					

					<cfelse>
						
	<p class="errorTXT"><img src="#session.iconurl#error.png" alt="Error" height="24" width="24" /> You have no <cfif url.status eq "P">pending<Cfelseif url.status eq "R">rejected<cfelse>approved</cfif> reviews</p>
					
					
					
					
				</cfif>
					
		

			</div> <!-- /container -->
				
				</div>	

			<hr>

			<div class="row" style="background-color:#222; padding:2%;"> 
				
			<div class="col-lg-12">	

			<!-- Footer -->
				<footer class="page-footer font-small blue">

			<!-- Copyright -->
				<div class="footer-copyright text-center py-3" style="color:#fff;">© 2020 Copyright:
				<a href="#"> CT Corp.</a>
				</div>
			<!-- Copyright -->

				</footer>
			<!-- Footer -->

			</div> <!-- /container -->

		</div>
				
				
				
				<!---<script type="text/javascript">
					
					$(document).ready(function () {
  					$('#emp_list').DataTable();
  					$('.dataTables_length').addClass('bs-select');
												});
					
					
						
				</script>--->
				
				
				<script>
					
					
					
					
				</script>
				
				<script>
				
					
        (function(document) {
            'use strict';

            var TableFilter = (function(myArray) {
                var search_input;

                function _onInputSearch(e) {
                    search_input = e.target;
                    var tables = document.getElementsByClassName(search_input.getAttribute('data-table'));
                    myArray.forEach.call(tables, function(table) {
                        myArray.forEach.call(table.tBodies, function(tbody) {
                            myArray.forEach.call(tbody.rows, function(row) {
                                var text_content = row.textContent.toLowerCase();
                                var search_val = search_input.value.toLowerCase();
                                row.style.display = text_content.indexOf(search_val) > -1 ? '' : 'none';
                            });
                        });
                    });
                }

                return {
                    init: function() {
                        var inputs = document.getElementsByClassName('search-input');
                        myArray.forEach.call(inputs, function(input) {
                            input.oninput = _onInputSearch;
                        });
                    }
                };
            })(Array.prototype);

            document.addEventListener('readystatechange', function() {
                if (document.readyState === 'complete') {
                    TableFilter.init();
                }
            });

        })(document);
					
				
    </script>
				
		
	</body>
	
	<!---  ---> 
 	<script src="employee/js/paginator.js"></script>
	<script src="employee/js/script.js"></script>				
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
	
		
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-2.1.1.min.js"></script>
   <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</html>
