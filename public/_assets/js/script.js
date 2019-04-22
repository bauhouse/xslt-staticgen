var nav = document.getElementById("global-nav");
var navItems = nav.getElementsByClassName("nav");

activateMenus(navItems);

function activateMenus(menus) {
  for (var i = 0; i < menus.length; i++) {
    menus[i].addEventListener("click", function( event ) {
      var panel = this.getElementsByClassName("panel")[0];
      if (this.classList.contains("open")) {
        if (!this.contains(event.target)) {
          closePanels(menus);
        } else {
          if (!panel.contains(event.target)) {
            this.classList.remove("open");
          }
        }
      } else {
        closePanels(menus);
        this.classList.add("open");
      }
    });
  }
  clickOutsideMenus(menus);
}

function closePanels(menus) {
  for (var i = 0; i < menus.length; i++) {
    menus[i].classList.remove("open");
  }
}

function clickOutsideMenus(menus) {
    document.addEventListener("click", function( event ) {
    var openMenu = nav.getElementsByClassName("open")[0];
    if(openMenu !== undefined) {
      if (!openMenu.contains(event.target)) {
        closePanels(menus);
      }
    }
  });
}
