class BookingSeatsController < ApplicationController
  def index
    @list_seats = session[:seats].map{|seat| Seat.find seat.to_i }
    @total_price = 60000 * session[:seats].size
    @room = Seat.find(session[:seats].first).room
    @film_name = @room.films.first.film_name
  end

  def save_seat_to_store
    check_seat_from_param = Seat.find params[:store][:seat]
    seat_belong_room = check_seat_from_param.room.name

    if session[:seats].present?
      seat_exits_in_session = session[:seats].first.to_i
      this_room_seat = Seat.find(seat_exits_in_session).room.name
      if seat_belong_room == this_room_seat
        if session[:seats].include? params[:store][:seat]
          session[:seats].delete params[:store][:seat]
        end
        session[:seats].push(params[:store][:seat])
      else
        session[:seats] = []
        session[:seats].push(params[:store][:seat])
      end
    else
      session[:seats] = []
      session[:seats].push(params[:store][:seat])
    end
  end

  def remove_seat_to_store
    session[:seats].delete(params[:store][:seat])
  end
end
