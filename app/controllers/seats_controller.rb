class SeatsController < ApplicationController
  def index
    @film = Film.find params[:id]
    @seats = @film.room.seats
  end
end
