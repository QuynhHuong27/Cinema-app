$( document ).ready(function() {
  const activeFilmTypeDefault = document.getElementsByClassName("type-item");
  const activeTextFilmType = document.getElementsByClassName("item")

  function setDefaultActive(defaultType, nameActive) {
    defaultType[0].className += nameActive
    for (var i = 0; i < defaultType.length; i++) {
      defaultType[i].addEventListener('click', function(){
        let replaceActive = nameActive.replace(/\s/, "")
        var current_choose = document.getElementsByClassName(replaceActive);
        current_choose[0].className = current_choose[0].className.replace(nameActive, "");
        this.className += nameActive;
      });
    };
  }

  setDefaultActive(activeFilmTypeDefault, " active-type");
  setDefaultActive(activeTextFilmType, " active-text");
});
