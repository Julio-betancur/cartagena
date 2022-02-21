window.onload = function() {
    var myAlert = document.getElementById('toast');//select id of toast
    var bsAlert = new bootstrap.Toast(myAlert);//inizialize it
    bsAlert.show();//show it
}