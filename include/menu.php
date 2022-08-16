<?php 
		$sql_category = mysqli_query($con,'SELECT * FROM tbl_category ORDER BY category_id DESC');
	?>
<div class="navbar-inner">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 100px">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto text-center mr-xl-5">
						<li class="nav-item active mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="">Danh mục :
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<?php 
							$sql_category_danhmuc = mysqli_query($con,'SELECT * FROM tbl_category ORDER BY category_id DESC');
							while($row_category_danhmuc = mysqli_fetch_array($sql_category_danhmuc)){
						?>
						<li class="nav-item  mr-lg-2 mb-lg-0 mb-2">

							<a class="nav-link " href="?quanly=danhmuc&id=<?php echo $row_category_danhmuc['category_id'] ?>" role="button"  aria-haspopup="true" aria-expanded="false">
								<?php echo $row_category_danhmuc['category_name'] ?>
							</a>
							
						</li>
						<?php
						} 
						?>
						<li class="nav-item">
							<a class="nav-link" href="contact.php">Liên hệ</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="https://www.facebook.com/profile.php?id=100023627074663">Facebook : Mai Nguyễn Ngọc Huy</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->