
document.addEventListener('DOMContentLoaded', (event) => {
    
    let  nav_icon;

    nav_icon = document.getElementById('nav-icon');
    nav_icon.addEventListener('click', _toggle);
    
    function _toggle() {
        nav_icon.classList.toggle('open');
    }

});