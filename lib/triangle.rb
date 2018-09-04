class Triangle
  # write code here

  attr_accessor :angle_A, :angle_B, :angle_C

  def initialize(a, b, c)
    @sides = [a, b, c].sort
  end

  def kind
    raise TriangleError if @sides.first <= 0 || @sides[2] >= @sides[1] + @sides[0]
    return :equilateral if @sides.uniq.length  == 1
    return :isosceles if @sides.uniq.length  == 2
    :scalene
  end

  # def kind
  #   if @angle_A + @angle_B <= @angle_C ||
  #     raise TriangleError
  #   else
  #     if @angle_A == @angle_B && @angle_B == @angle_C
  #       :equilateral
  #     elsif @angle_A == @angle_B || @angle_B == @angle_C || @angle_A == @angle_C
  #       :isosceles
  #     else !@side1 == @side1 && @side2 == @side3
  #       :scalene
  #     end
  #   end
  # end

  class TriangleError < StandardError
    def message
      "You have not entered a valid triangle!"
    end
  end

end
