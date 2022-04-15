<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    
    <title>Document</title> 
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;	
            width: 500px;

            margin: 10px;		
        }
        td, th {
            border: 1px solid black;
            padding: 8px;	
            
            text-align: center;
        }
    </style>   
</head>
<body>
    <table class="record_table">
        <thead>
            <tr>
                <th>checkbox</th>
                <th>Subjects</th>
            </tr>
        </thead>
        <tbody class="t-data">
            <!-- <tr>
                <td><input type="checkbox" class="use-address"></td>
                <td class="nr">Math</td>
            </tr>
            <tr>
                <td><input type="checkbox" class="use-address"></td>
                <td class="nr">Science</td>
            </tr>
            <tr>
                <td><input type="checkbox" class="use-address"></td>
                <td class="nr">English</td>
            </tr> -->
        </tbody>
    </table>
    <div>
        <h1>Subject Selected: <span id="sSub" style="font-weight: 100;"></span></h1>
    </div>

    <script>
        var sSub = document.querySelector('#sSub');        

    $(document).ready(function() {
        // $('.record_table tr').click(function(event) {
        //     if (event.target.type !== 'checkbox') {
        //         // $(':checkbox', this).trigger('click');
        //         alert($('.record_table td').val);
        //     }
        // });
        // $(':checkbox').click(function(){
        //     alert("hello world!");
        // });
        // $(".record_table").on('click','tr',function(e){
        //     e.preventDefault();
        //     var id = $(this).attr('value');
        //     alert(id);
        // }); 
        $('.t-data').load("b.php");
       
    });
    </script>
</body>
</html>