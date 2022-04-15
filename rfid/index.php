<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="topNav">
		<h1 id="title">KATARUNGAN VILLAGE</h1>
	</div>
	<form action="" method="POST" class="container">
		<img src="images/user.jpg" id="image_src" width="300px" height="300px">
		<ul>
			<li>
				<label for="rfid" id="label_rfid">RFID:</label>
				<label for="p_no" id="label_p_no">Plate Number:</label>
				<input type="text" name="rfid" id="rfid">
				<input type="text" name="p_no" id="p_no">		
			</li>
			<li>
				<label for="name">Name:</label>
				<input type="text" name="name" id="name">	
			</li>
			<li>
				<label for="birth_date">Birth Date:</label>
				<input type="text" name="birth_date" id="birth_date">			
			</li>
			<li>
				<label for="address">Address:</label>
				<input type="text" name="address" id="address">
			</li>
			<li>
				<label for="cp_no">Cellphone No:</label>
				<input type="text" name="cp_no" id="cp_no">	
			</li>
			<li class="button">					
					<input type="button" id="btn" value="Register">
			</li>
		</ul>
	</form>	
	</div>
	<script type="text/javascript" src="js/jquery-3.6.0.js"></script>
	<script type="text/javascript">

		// Getting Current Time
		function time(time) {
		  	var hours = time.getHours();
		  	var minutes = time.getMinutes();
		  	var seconds = time.getSeconds();		
		  	var ampm = hours >= 12 ? 'pm' : 'am';
		  	hours = hours % 12;
		  	hours = hours ? hours : 12; // the hour '0' should be '12'
		  	minutes = minutes < 10 ? '0'+minutes : minutes;	  	
		  	var strTime = hours + ':' + minutes + ':' + seconds +' '+ ampm;
		  	return strTime;
		}

		// Getting Current Date
		function date(date) {
			var year = date.getFullYear();
			var month = date.getMonth()+1;
			var day = date.getDate();
			var strDate = month + '/' + day + '/' + year;
			return strDate;
		}

		//assigning variables
		var rfid = document.getElementById('rfid');
		var p_no = document.getElementById('p_no');
		var name1 = document.getElementById('name');
		var birth_date = document.getElementById('birth_date');
		var address = document.getElementById('address');
		var cp_no = document.getElementById('cp_no');
		var set_img = document.getElementById('image_src');
		var btn = document.getElementById('btn');
		
		//select
		rfid.onkeyup = function(){	
			// Getting input value from input text field 'rfid'
			var rfid_input_value = $("#rfid").val();	

			// Making a request
			var ajax = new XMLHttpRequest();

			// Getting values from function1.php and sending values to it.
			ajax.open("GET", "function1.php?rfid=" + rfid_input_value + "&date=" + date(new Date) + "&time=" + time(new Date), true);
			ajax.send();

			// Getting response from function1.php, and assigning values to the html input elements
			ajax.onreadystatechange = function(){
				if (this.readyState == 4 && this.status == 200) {
					var myObj = JSON.parse(this.responseText);

					// Assigning values
					p_no.value = myObj[0];
					name1.value = myObj[1];
					birth_date.value = myObj[2];
					address.value = myObj[3];
					cp_no.value = myObj[4];					
					set_img.src = myObj[5];
					btn.value = myObj[6];
					if (myObj[7] !== "") {
						window.alert(myObj[7]);
					}
				}
			}		
		}

		// Send values to function2
		btn.onclick = function() {
			var pass_rfid = $("#rfid").val();
			var pass_p_no = $("#p_no").val();
			var pass_name = $("#name").val();
			var pass_birth_date = $("#birth_date").val();
			var pass_address = $("#address").val();
			var pass_cp_no = $("#cp_no").val();
			var pass_set_src = $("#image_src").attr('src');

			// Making another request
			var ajax = new XMLHttpRequest();

			// Getting values from function2.php and sending values to it.
			ajax.open("GET", 
				"function2.php?rfid="+pass_rfid+ 
				"&p_no="+ pass_p_no+
				"&name="+pass_name+
				"&b_date="+pass_birth_date+
				"&address="+pass_address+
				"&cp_no="+pass_cp_no+
				"&img_src="+pass_set_src, 
				true);
			ajax.send();

			ajax.onreadystatechange = function(){
				if (this.readyState == 4 && this.status == 200) {
					window.alert(this.responseText);
				}
			}		
		}
	</script>
</body>
</html>