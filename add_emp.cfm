<!-------------------INSERT A NEW USER TO DB------------->

<cfparam name="message" default="">
<cfparam name="isPositive" default="true">

<cfif IsDefined("URL.From")>

	<cfif #URL.From# IS "DoAdd">
		
		<cfinsert datasource="koalaSQL" TABLENAME="web_admin_users" formfields="ADMIN_USER, ADMIN_PASS, IS_SUPER, IS_CELERANT, LAST_FAILED_DTE, DLU">
			
		<cfset message="New Employee added Successfully!!!">
			
			<br>
			
		
	</cfif>
			
	<cfelse>
		
		<cfset message= "Enter all fields!!">
	
</cfif>
	

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
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
		
		
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
		
		label
			{
				color: #00437f;
			}
		
		i{
  				cursor:pointer;
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
						<li><a href="http://192.168.98.108/employee/employees.cfm">View Employees</a></li>
						<li class="active"><a href="http://192.168.98.108/employee/add_emp.cfm">Add New Employee</a></li>
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
			<center><h1 style="color:#669bc9;"></i>Add New Employee<!-- <i class="icon-calendar-empty"></i> --></h1></center><br>
			<center><p style="color:#00437f">Fill employee details in the form below.</p></center>
			<!--<p>Choose from the Workspace Tools Below</p>-->
			<!--<p><a class="btn btn-primary btn-large">RSVP &raquo;</a></p>-->
			</div> <!-- /container -->
		</div>
	
	
	
	
		<div class="container">
			
			
				<cfoutput>
					
					<br>
					
					<cfif len(message)>
						
						<h2 class="#(isPositive?'positive':'negative')#">#message#</h2>
    				
					</cfif>
		
			
				<form style="border: solid grey 1px; padding-top: 2%;" action="add_emp.cfm?From=DoAdd" method="post">
					
						  <div class="form-row">
							  
						    <div class="form-group col-md-6">
								
						      <label  for="inputEmail4">Employee Username *</label>
						      <input type="text" class="form-control" name="ADMIN_USER" id="inputUsr" placeholder="Required" required>
						    </div>
							  
							  
						    <div class="form-group col-md-6">
						     <label for="inputPassword4">Employee Password *</label>
						      <input type="password" class="form-control" name="ADMIN_PASS" id="inputPassword4" placeholder="Required" required>
								<i class="far fa-eye" id="togglePassword" onClick="Toggle()">&nbsp;View</i>
								
					  
						    </div>
							  
							  
						  </div>
					
							
							<div class="form-row">
								
							<!---<div class="form-group col-md-4">
						      <label style="color:#00437f;" for="inputEmail4">Full Name</label>
						      <input type="text" class="form-control" name="" id="inputEmail4" placeholder="Enter Employee Name">
						    </div>--->	
				
								
						    <div class="form-group col-md-6">
								
						     <label  for="inputState">Employee a Super User? *</label>
						      <select id="inputState" name="IS_SUPER" class="form-control" required>
						        <option selected>Required</option>
						        <option value="1">Yes</option>
								<option value="0">No</option>  
						      </select>
						    </div>
								
								
						    <div class="form-group col-md-6">
								
						      <label for="inputState2">Employee a Celerant User? *</label>
						      <select id="inputState2" name="IS_CELERANT" class="form-control" required>
						        <option selected>Required</option>
						        <option value="1">Yes</option>
								<option value="0">No</option>  
						      </select>
						    </div>
								
								
						  </div>
					
						
					
					
						  <div class="form-row">
							  
						    
							  
							<div class="form-group col-md-6">
						          
								<label for="example-datetime-local-input">Last Failed Date: *</label>
								
						          
									<input class="form-control" name="LAST_FAILED_DTE" type="datetime-local" value="Last Failed Date:2011-08-19T13:45:00" id="example-datetime-local-input" required>
						          
								
								
						    </div>
							  
							  
							  <div class="form-group col-md-6">
						          
								<label for="example-datetime-local-input">Last Date Used: *</label>
						          
								
						          
									 <input class="form-control" name="DLU" type="datetime-local" value="2011-08-19T13:45:00" id="example-datetime-local-input" required>
						          
								
								
						    </div>
							     
						    
						  </div>
								
							<br>
					
						  		<center><button style="margin: 2%;" type="submit" class="btn btn-primary">Submit</button></center>
							
						</form> </cfoutput>	
			
			
			

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
					
					
					function Toggle() { 
					var temp = document.getElementById("inputPassword4"); 
					if (temp.type === "password") { 
						
						temp.type = "text"; 
					} 
					
					else { 
							temp.type = "password"; 
						} 
									} 
									
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
 
	<script src="employee/js/script.js"></script>				
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
	
		
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-2.1.1.min.js"></script>
   <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</html>
