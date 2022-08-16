<!-- banner -->
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<!-- Indicators-->
		<div class="carousel-inner">
			<?php
			$sql_slider = mysqli_query($con,"SELECT * FROM tbl_slider WHERE slider_active='1' ORDER BY slider_id");
			while($row_slider = mysqli_fetch_array($sql_slider)){
			?>
			<div class="carousel-item item active" style="background: url(./images/<?php echo $row_slider['slider_image'] ?>) no-repeat center; background-size: cover; height: 750px;">
			</div>
			<?php
			} 
			?>
		</div>
	</div>
	<!-- //banner -->