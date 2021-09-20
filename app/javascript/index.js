$( document ).ready(function() {
  const activeFilmTypeDefault = document.getElementsByClassName('type-item');
  const activeTextFilmType = document.getElementsByClassName('item')

  function setDefaultActive(defaultType, nameActive) {
    defaultType[0].className += nameActive
    for (let i = 0; i < defaultType.length; i++) {
      defaultType[i].addEventListener('click', function(){
        let replaceActive = nameActive.replace(/\s/, '')
        var current_choose = document.getElementsByClassName(replaceActive);
        current_choose[0].className = current_choose[0].className.replace(nameActive, '');
        this.className += nameActive;
      });
    };
  }

  setDefaultActive(activeFilmTypeDefault, ' active-type');
  setDefaultActive(activeTextFilmType, ' active-text');

  const getData = document.getElementsByClassName('get-film');
  const currentPage = window.location.origin;

  function handleGetDataFlim() {
    for (let i = 0; i < getData.length; i++) {
      getData[i].addEventListener('click', function(){
        let set_status;
        let get_status;
        set_status = getData[i].dataset.target;
        switch (set_status) {
          case 'PHIM SẮP CHIẾU':
            get_status = 0
            break;
          case 'PHIM ĐANG CHIẾU':
            get_status = 1
            break;
          case 'SUẤT CHIẾU ĐẶC BIỆT':
            get_status = 2
            break;
        }
        $.ajax({
          method: 'GET',
          dataType: 'script',
          url: currentPage + '/films',
          data: {
            film: {
              status: get_status
            }
          }
        });
      });
    };
  }

  handleGetDataFlim();
});
