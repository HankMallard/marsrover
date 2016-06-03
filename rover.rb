class Rover

  attr_accessor :direction, :position_x, :position_y

  def direction(turn_direction)
    if turn_direction == "L" && @direction == "North"
      @direction = "W"
    end
  end

  def move
    if @direction== "W"
      @position_x -= 1

    end
  end

  def status
    return "The Rover is currently at #{@position_x},#{@position_y} and facing #{@direction}!"
  end
end
rover1 = Rover.new
rover1.position_x = 0
rover1.position_y = 0
rover1.direction = "North"
puts rover1.status
rover1.direction("L")
puts rover1.status
rover1.move
puts rover1.status
