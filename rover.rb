class Rover

  attr_accessor :direction, :position_x, :position_y

  def initialize(name, direction , position_x, position_y)
    @name = name
    @direction = direction
    @position_x = position_x
    @position_y = position_x

  end

  def direction(turn_direction)
    if turn_direction == "L" && @direction == "North"
      @direction = "West"

    elsif turn_direction == "L" && @direction == "West"
      @direction = "South"

    elsif turn_direction == "L" && @direction == "South"
      @direction = "East"

    elsif turn_direction == "L" && @direction == "East"
      @direction = "North"

    elsif turn_direction == "R" && @direction == "North"
      @direction = "East"

    elsif turn_direction == "R" && @direction == "East"
      @direction = "South"

    elsif turn_direction == "R" && @direction == "South"
      @direction = "West"

    elsif turn_direction == "R" && @direction == "West"
      @direction = "North"

    end
  end

  def move
    if @direction== "West"
      @position_x -= 1
      @position_y += 0

    elsif @direction== "North"
      @position_x += 0
      @position_y += 1

    elsif @direction== "East"
      @position_x += 1
      @position_y += 0

    elsif @direction== "South"
      @position_x += 0
      @position_y -= 1

    end
  end

  def status
    return "Rover #{@name} is currently at #{@position_x},#{@position_y} and facing #{@direction}!"
  end

end

rover1 = Rover.new("Alpha", "West", 1, 3)

puts rover1.status
rover1.direction("R")
 puts rover1.status
rover1.move
 puts rover1.status
rover1.direction("L")
 puts rover1.status
rover1.move
 puts rover1.status
rover1.direction("R")
 puts rover1.status
rover1.move
 puts rover1.status
rover1.direction("L")
 puts rover1.status
rover1.move
puts rover1.status
