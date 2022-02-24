class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  class TriangleError < StandardError
    # triangle error code
  end

  def kind
    if(side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1)
      begin
        raise TriangleError
      end
    elsif(side1 && side2 && side3) > 0
      if (side1 === side2) && (side1 == side3)
        :equilateral
      elsif ((side1 === side2) && (side1 != side3)) || ((side2 === side3) && (side2 != side1)) ||((side1 === side3) && (side2 != side1))
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

end
