class FilmsController < ApplicationController
  def index
    status_film = params[:film][:status].to_i
    @films = Film.where(status: status_film)
    respond_to :js
  end

  def show
    @film = Film.find params[:id]
  end
end
