$( document ).ready(function() {
  const currentPage = window.location.origin;

  $(".btn-finish-booking").click(function(){
    const room_id = document.getElementsByClassName("room-detail")[0].dataset.room;
    const total = document.getElementsByClassName("pay-price")[0].dataset.price;
    const seats = $(".total-pice").data("seats");
    $.ajax({
      method: "POST",
      dataType: "JSON",
      url: currentPage + "/booking_tickets",
      data: {
        booking_ticket: {
          room_id: room_id,
          total: total,
          seat_id: seats
        }
      }
    });
  });
})
