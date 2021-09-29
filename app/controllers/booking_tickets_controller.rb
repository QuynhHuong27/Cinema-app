class BookingTicketsController < ApplicationController
  def create
    @booking_ticket = BookingTicket.new booking_ticket_params
    @booking_ticket.custoner_id = current_customer.id
    list_seats = params[:booking_ticket][:seat_id]
    if @booking_ticket.save
      list_seats.each do |seat|
        BookingSeat.create(seat_id: seat.to_i, booking_ticket_id: @booking_ticket.id)
        state_seat = Seat.find(seat.to_i).booked!
      end
      session[:seats] = []
    end
  end

  def index
    @booking_tickers = current_customer.booking_tickets
  end


  private

  def booking_ticket_params
    params.require(:booking_ticket).permit(:room_id, :total)
  end
end
