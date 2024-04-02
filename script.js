document.addEventListener("DOMContentLoaded", function() {
    var button = document.getElementById("drawer");
    var button2 = document.getElementById("drawer2");
    var menu = document.querySelector(".menu");
  
    button.addEventListener("click", function() {
      if (menu.classList.contains("open")) {
        menu.classList.remove("open");
      } else {
        menu.classList.add("open");
      }
    });
    button2.addEventListener("click", function() {
        if (menu.classList.contains("open")) {
          menu.classList.remove("open");
        } else {
          menu.classList.add("open");
        }
      });
  });