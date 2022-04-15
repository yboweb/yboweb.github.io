var btn = document.getElementById("btn");

btn.onclick = function() {      
    var username = $("#username").val();
    var password = $("#password").val();

    var ajax = new XMLHttpRequest();

    ajax.open("GET", 
      "php/login.php?username="+username+ 
      "&password="+ password, 
      true);
    ajax.send();

    ajax.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {          
            if (this.responseText == "true") {
            window.location.href= "php/home.php";
            } else {
              window.alert(this.responseText);
            }      
        }
    } 
}