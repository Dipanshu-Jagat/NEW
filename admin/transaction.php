<!DOCTYPE html>
<?php
	require_once 'session.php';
?>
<html lang = "eng">
	<head>
		<title>Information System Society Membership</title>
		<meta charset = "UTF-8" />
		<meta name = "viewport" content = "width=device-width, initial-scale=1" />
		<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/style.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/jquery-ui.css" />
	</head>
<body style="background-image: url(https://images7.alphacoders.com/365/365706.jpg); background-repeat: no-repeat;
  background-attachment: fixed; background-size: 100% 100%;">
<!--------------------HEAD---------------------->
<?php include'head.php';?>
<!--------------------HEAD---------------------->
<!-------------------SIDEBAR------------------>
<?php include 'sidebar.php';?>
<!-------------------SIDEBAR------------------>

		<div id = "sidecontent" class = "well pull-right" style = "margin-top: 225px; margin-right:58px";>
			<div class = "alert alert-info">Transaction</div>
			<div class = "panel panel-default">
				<div class = "panel-heading">
					<div class = "form-inline">
						<label>Enter User ID:</label>
						<input type = "number" style = "width:200px;" class = "form-control" min = "0" max = "999999" id = "search"/>
						<button class = "btn btn-primary" id = "btn_search"><span class = "glyphicon glyphicon-search"></span></button>
					</div>
					<hr style = "border-top:1px dotted #000;"/>
					<div id = "result">
						
					</div>
					<br style = "clear:both;"/>
				</div>
			</div>
		</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	
</body>	
<script src = "../js/jquery-3.1.1.js"></script>
<script src = "../js/sidebar.js"></script>
<script src = "../js/bootstrap.js"></script>
<script src = "../js/sidebar.js"></script>
<script src = "../js/script.js"></script>
</html>