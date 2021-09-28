$( document ).ready(function() {
  const listSeat = document.getElementsByClassName("btn-secondary");
  const seatPicked = document.querySelector(".picked-seat");
  const seatPickedColection = [];


  for (let i = 0; i < listSeat.length; i++) {
    listSeat[i].addEventListener("click", function(){
      const seatsPicked = this.dataset.name;
      if(this.className.includes("btn-secondary")) {
        this.className = listSeat[i].className.replace("btn-secondary", "btn-primary");
        seatPickedColection.push(seatsPicked);
        handlePickSeat(this.dataset.name);
        handle_save_seat_to_store(this.dataset.id, "/save_seat_to_store");
      } else {
        this.className = listSeat[i].className.replace("btn-primary", "btn-secondary");
        seatPickedColection.filter(item => item !== this.dataset.name);
        handleRemoveSeatPicked(this);
        handle_save_seat_to_store(this.dataset.id, "/remove_seat_to_store");
      }
    })
  };

  function handlePickSeat(seatName) {
    let span = document.createElement("span");
    span.textContent = seatName;
    span.className = "btn seat-picked btn-seat-picking";
    span.setAttribute("data-id", seatName);
    seatPicked.append(span);
  };

  function handleRemoveSeatPicked(seat) {
    let param_id = seat.dataset.name;
    let data_tag = document.querySelector(`[data-id="${param_id}"]`);
    data_tag.remove();
  };

  const currentPage = window.location.origin;
  const roomName = $(".room-showing").text();
  const idFilm = document.querySelector(".name-film").dataset.film;

  function handle_save_seat_to_store(seat, url) {
    $.ajax({
      method: "POST",
      dataType: "JSON",
      url: currentPage + url,
      data: {
        store: {
          seat: seat,
        }
      }
    });
  }
})
