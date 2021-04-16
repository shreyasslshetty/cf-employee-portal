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
			
				<a href="http://192.168.98.108/employee/index.cfm"><img style="margin-top:3%; margin-right: 5%;" src="images/brand-logo.png" width="40" height="50" class="d-inline-block align-top" alt=""></a>
				
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
			<center><h1 style="color:#669bc9;"></i>Welcome to CTC Employee Portal<!-- <i class="icon-calendar-empty"></i> --></h1></center><br>
			<center><p style="color:#00437f">Choose from the Workspace Tools Below</p></center>
			<!--<p>Choose from the Workspace Tools Below</p>-->
			<!--<p><a class="btn btn-primary btn-large">RSVP &raquo;</a></p>-->
			</div> <!-- /container -->
		</div>

		<div class="body-content">

			<div class="container">

			<div class="row" >
			
			<div class="col-lg-4" style="border: solid 1px grey">
			
				<center><img style="height:150px; width:150px; margin-top:1%;" src="images/man.png"></center><br>
				
				<center><a style="color:#337ab7; font-size:2.5rem;" href="http://192.168.98.108/employee/employees.cfm" style="">View Employees</a><center><br>
				
			</div>
			
			<div class="col-lg-4" style="border: solid 1px grey">
			
				<center><img style="height:150px; width:150px; margin-top:1%;" src="images/add.png"></center><br>
				
				<center><a style="color:#337ab7; font-size:2.5rem;" href="http://192.168.98.108/employee/add_emp.cfm" style="">Add New Employee</a><center><br>
				
			</div>
			
			
			<div class="col-lg-4" style="border: solid 1px grey">
			
				<center><img style="height:150px; width:150px; margin-top:1%;" src="images/update.png"></center><br>
				
				<center><a style="color:#337ab7; font-size:2.5rem;" href="http://192.168.98.108/employee/upd_emp.cfm" style="">Update Employee Info</a><center><br>
				
			</div>
			
			<div class="col-lg-12" style="border: solid 1px grey">
			
				<center><img style="height:150px; width:150px; margin-top:1%;" src="images/cancel.png"></center><br>
				
				<center><a style="color:#337ab7; font-size:2.5rem;" href="http://192.168.98.108/employee/del_emp.cfm" style="">Delete an Employee</a><center><br>
				
			</div><br>
			
			
			
			
			<!--<div class="col-lg-4">
				<h2>Meetings</h2>
				<p>We meet the first Wednesday of every month in <!--TODO: #dynamic location  Lakeville Minnesota at ImageTrend Inc. Be sure to attend the next meeting to stay connected to the ColdFusion community.</p>
				<p><a class="btn btn-default" href="#rsvp">RSVP &raquo;</a></p>
 			</div>
			<div class="col-lg-4">
				<h2>What we do</h2>
				<p>... Tag Cloud ....</p>
				<p><a class="btn btn-default" href="#presentations">Presentations &raquo;</a></p>
			</div>-->
			</div>

			</div> <!-- /container -->

			<hr>

			<div class="row" style="background-color:#222; padding:2%;"> 

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
		
	</body>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-2.1.1.min.js"></script>
   <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</html>