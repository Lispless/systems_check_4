class BoundingArea

  def initialize(area_array)
    @area_array = area_array
  end

  def contains_point?(x, y)
    if x == 0 && y == 0
      false
    else
      @area_array.each do |box|
        if x >= box.left && y >= box.bottom && x <= box.right && y <= box.top
          return true
        else
          return false
        end
      end
    end
  end
end
 
