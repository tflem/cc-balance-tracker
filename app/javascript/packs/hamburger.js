document.addEventListener('DOMContentLoaded', function () {    
    const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
  
    if ($navbarBurgers.length > 0) {  
      
      $navbarBurgers.forEach(function ($el) {
        $el.addEventListener('click', function () {  
          
          const target = $el.dataset.target;
          const $target = document.getElementById(target);
  
          // Toggle the class on both the "navbar-burger" and the "navbar-menu"
          $el.classList.toggle('is-active');
          $target.classList.toggle('is-active');  
        });
      });
    }  
  });