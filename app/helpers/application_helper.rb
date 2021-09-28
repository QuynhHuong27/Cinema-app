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

  def status_seats status, name, id
    label = case status.to_sym
            when :blank
              "secondary"
            when :booked
              "warning"
            end
    tag.span class: "btn btn-seat btn-#{label}", data: {id: id, name: name} do
      name
    end
  end
end
