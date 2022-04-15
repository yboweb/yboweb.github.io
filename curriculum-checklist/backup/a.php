<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>
<style type="text/css">
	form {		
		padding: 1em;
		margin: 1em;		
		width: 500px;
		border: 1px solid black;
	}
	ul {
		list-style: none;
		padding: 0;
		margin: 0;
	}
	form li + li {
		margin-top: 1em;
	}
	label {
		/*display: inline-block;*/
		width: 90px;
		/*text-align: right;*/
	}
	input, select {
		width: 300px;
		box-sizing: border-box;
		float: right;
	}
	table {
		font-family: arial, sans-serif;
		border-collapse: collapse;	
		width: 100%;	
	}
	td, th {
		border: 1px solid black;
		text-align: center;
		padding: 8px;
	}
</style>
<body>
    <h1 id="hatdog"></h1>
	<form action="" method="POST" class="container">
		<ul>
			<li>
				<label for="ulrn">ULRN</label>		
        		<input type="text" name="ulrn" id="ulrn">
			</li>
			<li>
				<label for="name">NAME</label>		
        		<input type="text" name="name" id="name">
			</li>
			<li>
				<label for="address">ADDRESS</label>		
        		<input type="text" name="address" id="address">
			</li>
			<li>
				<label for="cno">CONTACT NUMBER</label>		
        		<input type="text" name="cno" id="cno">
			</li>
			<li>
				<label for="sy">SCHOOL YEAR</label>		
        		<select id="sy">
					<option value="2019-2020">2019-2020</option>
					<option value="2020-2021">2020-2021</option>
					<option value="2020-2021">2021-2022</option>
				</select>
			</li>
			<li>
				<label for="strand">STRAND</label>		
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
	<table>
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

	<script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
	<script type="text/javascript">

		//assigning variables
		var ulrn = document.querySelector('#ulrn');	
		var name1 = document.querySelector('#name');
		var address = document.querySelector('#address');
		var contact_no = document.querySelector('#cno');
		var sy = document.querySelector('#sy');
		var strand = document.querySelector('#strand');
		
		//select
		ulrn.onkeyup = function(){				
			var ulrn_input = $("#ulrn").val();	

			// Making a request
			var ajax = new XMLHttpRequest();
			
			ajax.open("GET", "b.php?ulrn=" + ulrn_input, true);
			ajax.send();

			ajax.onreadystatechange = function(){
				if (this.readyState == 4 && this.status == 200) {
                    var myObj = JSON.parse(this.responseText);

                    name1.value = myObj[0];
                    address.value = myObj[1];
                    contact_no.value = myObj[2];
                    sy.value = myObj[3];
                    strand.value = myObj[4];                    
				}
				var option = strand.options[strand.selectedIndex];
				var ovalue = option.value;				
							
				$("#t-data").load("c.php", {
					svalue: ovalue,
					ulrn: ulrn_input,
				});					
			}										
		}
	</script>
</body>
</html>