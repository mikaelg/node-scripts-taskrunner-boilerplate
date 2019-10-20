
document.addEventListener('DOMContentLoaded', (event) => {
    
    let navigation;
    let nav_icon;

    navigation = document.getElementById('navigation');
    nav_icon = document.getElementById('nav-icon');
    nav_icon.addEventListener('click', _toggle);
    
    function _toggle() {
        nav_icon.classList.toggle('open');
        navigation.classList.toggle('open');
    }

});