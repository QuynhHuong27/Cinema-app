class HomepagesController < ApplicationController
  def home
    @film_types = FilmType.all
  end
end
