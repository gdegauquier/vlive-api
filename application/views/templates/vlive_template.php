<!DOCTYPE html>
<html>
	<head>
		<meta
		charset="utf-8">
		<meta
		name="viewport" content="width=device-width, initial-scale=1">
		<title>VLIVE</title>
		
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> 
		
		<style type="text/css">
			body {
				font-family:"Open Sans";
				margin: 10px auto;
				max-width: 650px;
				line-height: 1.6;
				font-size: 18px;
				color: #444;
				padding: 010px
			}
			h1, h2, h3 {
				line-height: 1.2
			}
		</style>
	</head>
	<body>
		<header>
			<h1>v-live</h1>
		</header>


	<?php 
	$this->load->view($view);
	?>
	</body>
</html>