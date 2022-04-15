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

	<link rel="stylesheet" type="text/css" href="css/index-style.css">
</head>
<body>
	<div class="bg-img"></div>

    <div class="jumbotron custom-jumbotron">
        <div class="tblock">      		
        	<h1>MNHS MAIN</h1>
        </div>
        
        <form action="" method="POST">
        	<div class="input-group">
			    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			    <input id="username" type="text" class="form-control" name="username" placeholder="Username">
			</div>
        	<div class="input-group">
			    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
			    <input id="password" type="password" class="form-control" name="password" placeholder="Password">
			</div>
			<div>
				<input type="button" class="btn btn-default btn-block" id="btn" value="Sign in"> 
        	</div>
        </form>        	
    </div>      
    <script type="text/javascript" src="js/login-script.js"></script>    
</body>
</html>