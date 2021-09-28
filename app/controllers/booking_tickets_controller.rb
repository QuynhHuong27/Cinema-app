class BookingTicketsController < ApplicationController
  def create
    @booking_ticket = BookingTicket.new booking_ticket_params
    list_seats = params[:booking_ticket][:seat_id]
    if @booking_ticket.save
      list_seats.each do |seat|
        BookingSeat.create(seat_id: seat.to_i, booking_ticket_id: @booking_ticket.id)
        state_seat = Seat.find(seat.to_i).booked!
      end
      session[:seats] = []
    end
  end

  private

  def booking_ticket_params
    params.require(:booking_ticket).permit(:room_id, :total)
  end
end
