class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
end

  def kind(equilateral:, isosceles:, scalene:)
    if (@length1 <= 0 or @length2 <= 0 or @length3 <= 0) or
      (@length2 + @length1 < @length3 or @length2 + @length3 < @lengnth1 or
      @length1 + @length3 <= @length2)
      raise TriangleError
    end
    return :equilateral if @length1 == @length2 and @length1 == @length3
    return :isosceles if @length1 == @length2 or @length1 == @length3 or @length2 == @length3
    return :scalene if @length1 != @length2 or @length2 != @length3
    end
  end

class TriangleError < StandardError
end
