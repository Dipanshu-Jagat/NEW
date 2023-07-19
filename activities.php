<div id = "activities" class = "tab-pane fade" style:"margin-right:500px;">
	<img src = "images/gjjj.png" class = "pull-left" height = "100" width = "100" />
	<h2 class = "text-success pull-left">Jageshwar Residential</h2>
	<br style = "clear:both;"/>
	<hr style = "border-top:1px solid #000;"/>
	
	<br />
	<table class = "table table-hover">
		<?php
			$month = date("M", strtotime("+8 HOURS"));
			$year = date("Y", strtotime("+8 HOURS"));
			$q_activity = $conn->query("SELECT * FROM `activity` WHERE `month` = '$month' && `year` = '$year' ORDER BY `start`") or die(mysqli_error());
			while($f_activity = $q_activity->fetch_array()){
		?>
		<tr>
			<td><?php echo date("M d, Y", strtotime($f_activity['start']))." - ".date("M d, Y", strtotime($f_activity['end']))?></td>
			<td><?php echo $f_activity['title']?></td>
			<td><?php echo $f_activity['description']?></td>
		</tr>
		<?php
			}
		?>
	</table>
	
</div>