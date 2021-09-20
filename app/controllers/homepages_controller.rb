class HomepagesController < ApplicationController
  def home
    @film_types = set_name_other_status_film
    @films = Film.comming_soon
  end
end
