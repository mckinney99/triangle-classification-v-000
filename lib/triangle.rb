class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
end

  def kind(equilateral:, isosceles:, scalene:)
    if (@length1 <= 0 || @length2 <= 0 || @length3 <= 0) ||
      (@length2 + @length1 < @length3 || @length2 + @length3 < @lengnth1 ||
      @length1 + @length3 <= @length2)
      raise TriangleError
    end
    return :equilateral if @length1 == @length2 && @length1 == @length3
    return :isosceles if @length1 == @length2 || @length1 == @length3 || @length2 == @length3
    return :scalene if @length1 != @length2 || @length2 != @length3
    end
  end

class TriangleError < StandardError
end
