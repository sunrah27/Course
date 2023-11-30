document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.modal');
    var instances = M.Modal.init(elems, options);
    var options = {
        dismissible: 1,
    }
});


$(document).ready(function(){
    $('.carousel').carousel();
    $('.sidenav').sidenav();
});