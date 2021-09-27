class BookingTicketsController < ApplicationController
  def new
    @room_name = session[:room_name]
    @list_seats = session[:seat_picked].map{ |i| Seat.find_by name: i}
    @total_price = 60000 * @list_seats.size
  end

  def save_data_store
    session[:room_name] = params[:session][:room_name]
    session[:film_id] = params[:session][:film_id]
    session[:seat_picked] = params[:session][:seat_pick]
  end

  def create; end
end
