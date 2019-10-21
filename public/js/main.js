
document.addEventListener('DOMContentLoaded', (event) => {
    
    let navigation;
    let nav_icon;
    let nav_icon_container;

    navigation = document.getElementById('navigation');
    nav_icon_container = document.getElementById('nav-icon__container');
    nav_icon = document.getElementById('nav-icon');
    nav_icon.addEventListener('click', _toggle);
    
    function _toggle() {
        nav_icon.classList.toggle('open');
        nav_icon_container.classList.toggle('fixed');
        navigation.classList.toggle('open');
    }

});