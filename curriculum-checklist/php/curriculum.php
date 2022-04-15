<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>MNHS Login</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<link href="https://fonts.googleapis.com/css2?family=Luckiest+Guy&display=swap" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/curriculum-style.css">
</head>
<body>
	
	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>                        
				</button>
				<a class="navbar-brand" href="../php/home.php">
					<img src="../img/logo.png">
					<span>MNHS MAIN</span>
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a class="active" href="../php/home.php">Home</a></li>
					<li><a href="curriculum.php">Curriculum</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<div class="container c-cont">
		<form action="" method="POST" class="info-form">
			<ul>
				<li>
					<label form="ulrn">ULRN:</label>
					<input type="text" id="ulrn" name="ulrn">
				</li>
				<li>
					<label for="name">Name:</label>
					<input type="text" id="name" name="name">
				</li>
				<li class="f-clear">
					<label for="address">Address:</label>
					<input type="text" id="address" name="address">
				</li>
				<li>
					<label for="cno">Contact No.</label>
					<input type="text" id="cno" name="cno">
				</li>
				<li class="f-clear">
					<label for="sy">School Year:</label>
					<select id="sy">
						<option value="2019-2020">2019-2020</option>
						<option value="2020-2021">2020-2021</option>
						<option value="2021-2022">2021-2022</option>
					</select>
				</li>
				<li>
					<label>Strand:</label>
					<select id="strand">
						<option value="gas">GAS</option>
						<option value="abm">ABM</option>
						<option value="stem">STEM</option>
						<option value="and">Arts and Design</option>
						<option value="sports">Sport Track</option>
						<option value="he">HE</option>
						<option value="ict">ICT</option>
					</select>
				</li>
			</ul>
		</form>				
	</div>

	<div class="container table-cont">
		<table class="record_table">
			<thead>
				<tr>
					<th rowspan="3">Checklist</th>
					<th rowspan="3">Subjects</th>
					<th rowspan="3">Hours</th>
				</tr>
				<tr>
					<th colspan="2">Grade 11</th>
					<th colspan="2">Grade 12</th>
				</tr>
				<tr>
					<th>1st Sem</th>
					<th>2nd Sem</th>
					<th>3rd Sem</th>
					<th>4th Sem</th>
				</tr>
			</thead>
			<tbody id="t-data">
				
			</tbody>
		</table>
	</div>

    <script type="text/javascript" src="../js/curriculum-script.js"></script>    
</body>
</html>