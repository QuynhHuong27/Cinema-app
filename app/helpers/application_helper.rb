module ApplicationHelper
  def set_name_other_status_film
    @set_name = []
    status = Film.statuses
    status.transform_keys do |st|
      case st
      when st = "comming_soon"
        name = "PHIM SẮP CHIẾU"
      when st = "showing"
        name = "PHIM ĐANG CHIẾU"
      when st = "special"
        name = "SUẤT CHIẾU ĐẶC BIỆT"
      end
      @set_name.push name
    end
    return @set_name
  end
end
