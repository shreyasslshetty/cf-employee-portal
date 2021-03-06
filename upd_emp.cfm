<!---<cfparam name="url.status" default="P">--->
	
	<!-- The below code selects all data from the table -->
	
<cfif IsDefined("URL.From")>
<cfif #URL.From# IS "DoEdit">

<CFUPDATE DATASOURCE="koalaSQL" TABLENAME="web_admin_users" formfields="ID,ADMIN_PASS,ADMIN_USER,IS_CELERANT,IS_SUPER,DLU,LAST_FAILED_DTE">
	
	<!---<cfquery name="UpdEmployeeInfo" datasource="koalaSQL">
         UPDATE web_admin_users
		 SET ADMIN_USER = '#Form.ADMIN_USER#',
		 ADMIN_PASS = '#Form.ADMIN_PASS#',
		 DLU = '#Form.DLU#',
		 IS_CELERANT = #Form.IS_CELERANT#,
		 IS_SUPER = #Form.IS_SUPER#,
		 LAST_FAILED_DTE = '#Form.LAST_FAILED_DTE#' where ID = #Form.ID#
</cfquery>--->
	

</cfif>
</cfif>
	
	
<cfquery name="GetEmployeeInfo" datasource="koalaSQL">
         SELECT *
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
		
		<cfif IsDefined("DoUpdate.RecordCount")>
			
		</cfif>
		
		
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
						<li><a href="http://192.168.98.108/employee/add_emp.cfm">Add New Employee</a></li>
						<li  class="active"><a href="http://192.168.98.108/employee/upd_emp.cfm">Update Employee</a></li>
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
			<center><h1 style="color:#669bc9;"></i>Update Employee Details<!-- <i class="icon-calendar-empty"></i> --></h1></center><br>
			<center><p style="color:#00437f">Select employee to update from below.</p></center>
			<!--<p>Choose from the Workspace Tools Below</p>-->
			<!--<p><a class="btn btn-primary btn-large">RSVP &raquo;</a></p>-->
			</div> <!-- /container -->
		</div>

		<div class="body-content">

			<div class="container">

			<div class="row">
			
			<div class="col-lg-12" style="border: solid 1px grey; margin-bottom: 10%;">
				
					<h2 style="color:#669bc9;">Employee Records</h2>
				
				
				
				
				
				<cfif GetEmployeeInfo.recordcount gt 0>
					
					  
					<h3>
            
						<input style="border: solid black 1px;" type="search" placeholder="Search Employees..." class="form-control search-input" data-table="customers-list"/>
        			
					</h3>


						<table id="order-history" class="table table-striped mt32 customers-list" style="width: 100%; text-align: center; border: solid 1px black;">
							
							
							<thead>
							
							
							<tr style="text-align: center; border: solid 1px black;"> <br>
								
								<th style="text-align: center; border: solid 1px black; color:#00437f">ID</th>
                                <th style="text-align: center; border: solid 1px black; color:#00437f">ADMIN_USER</th>
                                <th style="text-align: center; border: solid 1px black; color:#00437f">ADMIN_PASS</th>
                                <th style="text-align: center; border: solid 1px black; color:#00437f">IS_SUPER</th>
                                <th style="text-align: center; border: solid 1px black; color:#00437f">IS_CELERANT</th>
                                <th style="text-align: center; border: solid 1px black; color:#00437f">LAST_FAILED_DTE</th>
                                <th style="text-align: center; border: solid 1px black; color:#00437f">DLU</th>
                                <th style="text-align: center; border: solid 1px black; color:#00437f">UPDATE</th>
								
                                
                           </tr>
								
								
							</thead>	

							<!-- Here we check for the URL.From attribute -->

                            <cfif IsDefined("URL.From")>
                            
                            <!-- If URL.From just equals DoEdit, we simply just output the data, just as if it was undefined  -->
                            
                            <cfif #URL.From# IS "DoEdit">
                            
                            <cfoutput query="GetEmployeeInfo">
								
                            <tr style="text-align: center; border: solid 1px black;">
								
                                   <td style="text-align: center; border: solid 1px black;">#ID#</td>
                                   <td style="text-align: center; border: solid 1px black;">#ADMIN_USER#</td>
								
					
								
                                   <td style="text-align: center; border: solid 1px black;">#ADMIN_PASS#</td>
                                   <td style="text-align: center; border: solid 1px black;">#IS_SUPER#</td>
                                   <td style="text-align: center; border: solid 1px black;">#IS_CELERANT#</td>
                                   <td style="text-align: center; border: solid 1px black;">#LAST_FAILED_DTE#</td>
                                   <td style="text-align: center; border: solid 1px black;">#DLU#</td>

									<!-- This is where the Edit button and form is created -->

                                   <td style="text-align: center; border: solid 1px black;">
                           
									   <form action="upd_emp.cfm?From=Edit&id=#ID#" method="post">
										   
										    <input type="image" src="images/update-table.png" alt="Submit">
										   
                                       <!---<input type="submit" value="Edit">--->
										   
                           			   </form>
									   
                                  </td>
								
								
                                  
                           
                           </tr>
								
                           </cfoutput>
								

                             <cfelse>
                             
                             <cfloop query="GetEmployeeInfo">
                             
                             <cfif #URL.ID# IS #GetEmployeeInfo.ID#>
                             
                             <cfoutput>
								 
                             
                             <form action="upd_emp.cfm?From=DoEdit&id=#ID#" onSubmit="return confirm('Confirm Update?')"  method="post">
								 
								
                             <tr style="text-align: center; border: solid 1px black;">
								 
								
								 
                             <td style="text-align: center; border: solid 1px black;"><input type= "hidden" name="ID" size="0" value="#ID#"></td>
							 	 
                             <td style="text-align: center; border: solid 1px black;"><input type="text" name="ADMIN_USER" size="5" value="#ADMIN_USER#"></td>
								 
                             <td style="text-align: center; border: solid 1px black;"><input type="password" name="ADMIN_PASS" id="pas1" size="5" value="#ADMIN_PASS#"> <input type="checkbox" onclick="Toggle()"> <b>Show</b> </td>
								 
								 
							 <td style="text-align: center; border: solid 1px black;"><select id="supu" name="IS_SUPER" value="#IS_SUPER#"> <option>0</option> <option selected>1</option></select> </td>	
								 
							<td style="text-align: center; border: solid 1px black;"><select id="celu" name="IS_CELERANT" value="#IS_SUPER#"> <option>0</option> <option selected>1</option></select> </td>	 
								 
                             <!---<td style="text-align: left; border: solid 1px black;"><input type="text" name="IS_SUPER" size="1" value="#IS_SUPER#"></td>--->
                             <!---<td style="text-align: left; border: solid 1px black;"><input type="text" name="IS_CELERANT" size="1" value="#IS_CELERANT#"></td>--->
                             <td style="text-align: center; border: solid 1px black;"><input type="datetime-local" name="LAST_FAILED_DTE" value="#LAST_FAILED_DTE#"></td>
                             <td style="text-align: center; border: solid 1px black;"><input type="datetime-local" name="DLU" value="#DLU#"></td>
								 
							 <td style="text-align: center; border: solid 1px black;">
								 
								 <!--- <input type="image" src="images/update-table.png" alt="Submit">--->
								 
								 <input style="background-color: darkgreen; color:white; border: black solid 1px;" type="submit" value="Update"></td>	 
								 
								 
                             </tr>
                             
                             </cfoutput>
                             
                             <cfelse>
                             
                             <!-- This is where all the data get's nicely output into the table -->
                             
                             <cfoutput>
								 
                             <tr style="text-align: center; border: solid 1px black;">
                             	
                             <td style="text-align: center; border: solid 1px black;">#ID#</td>
                             <td style="text-align: center; border: solid 1px black;">#ADMIN_USER#</td>
                             <td style="text-align: center; border: solid 1px black;">#ADMIN_PASS#</td>
                             <td style="text-align: center; border: solid 1px black;">#IS_SUPER#</td>
                             <td style="text-align: center; border: solid 1px black;">#IS_CELERANT#</td>
                             <td style="text-align: center; border: solid 1px black;">#LAST_FAILED_DTE#</td>
                             <td style="text-align: center; border: solid 1px black;">#DLU#</td>
                             	
                             <td></td>
								 
                            </tr>
								 
                            </cfoutput>
                            
                            </cfif>
                            
                            </cfloop>
                            
                            </cfif>
                            
                            <!-- If URL.From is undefined -->
                            
                            <cfelse>
                            
                            <cfoutput query="GetEmployeeInfo">
								
                            <tr style="text-align: center; border: solid 1px black;">
								
                                  <td style="text-align: center; border: solid 1px black;">#ID#</td>
                                  <td style="text-align: center; border: solid 1px black;">#ADMIN_USER#</td>
                                  <td style="text-align: center; border: solid 1px black;">#ADMIN_PASS#</td>
                                  <td style="text-align: center; border: solid 1px black;">#IS_SUPER#</td>
                                  <td style="text-align: center; border: solid 1px black;">#IS_CELERANT#</td>
                                  <td style="text-align: center; border: solid 1px black;">#LAST_FAILED_DTE#</td>
                                  <td style="text-align: center; border: solid 1px black;">#DLU#</td>
                            
                            <!-- This is where the Edit button and form is created -->
                            
                                  <td>
							      	
                                          <form action="upd_emp.cfm?From=Edit&id=#ID#" onsubmit="return validate(this);" method="post">
											  
										 <input type="image" src="images/update-table.png" alt="Submit">
											  
                                          <!---<input type="submit" value="Edit">--->
							      	
                                  		  </form>
							      	
                                  </td>
                            
                            </tr>
								
                            </cfoutput>
                            
                            </cfif>
                            
                            <!-- If URL.From is defined and equals Edit, then display an update button and close the form -->
                            
                            <cfif IsDefined("URL.From")>
                            <cfif #URL.From# IS "Edit">
                            
                            
                            
                            </cfif>
                            </cfif>
                            
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
				<div class="footer-copyright text-center py-3" style="color:#fff;">?? 2020 Copyright:
				<a href="#"> CT Corp.</a>
				</div>
			<!-- Copyright -->

				</footer>
			<!-- Footer -->

			</div> <!-- /container -->

		</div>
										
								
								
				<script> 
					
					
					function Toggle() { 
					var temp = document.getElementById("pas1"); 
					if (temp.type === "password") { 
						
						temp.type = "text"; 
					} 
					
					else { 
							temp.type = "password"; 
						} 
									} 
									
					</script>
								
				
				<script>
					
					function validate(form) {
						
						// validation code here ...
						
						
						if(!valid) {
							alert('Please correct the errors in the form!');
							return false;
						}
						else {
							return confirm('Confirm Record Update?');
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
