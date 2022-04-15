//assigning variables
var ulrn = document.querySelector('#ulrn');	
var name1 = document.querySelector('#name');
var address = document.querySelector('#address');
var contact_no = document.querySelector('#cno');
var sy = document.querySelector('#sy');
var strand = document.querySelector('#strand');

//select
$(document).ready(function(){
    ulrn.onkeyup = function(){				
        var ulrn_input = $("#ulrn").val();	
    
        // Making a request
        var ajax = new XMLHttpRequest();
        
        ajax.open("GET", "../php/student_info.php?ulrn=" + ulrn_input, true);
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
                        
            $("#t-data").load("../php/student_curriculum.php", {
                svalue: ovalue,
                ulrn: ulrn_input,
            });					
        }										
    }
});