class Triangle
  # write code here
  attr_reader :side1
  attr_reader :side2
  attr_reader :side3

  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
    if self.side1 <= 0 || self.side2 <= 0  || self.side3 <= 0
      raise TriangleError
    elsif self.side1 + self.side2 <= side3 || side2 + side3 <= side1 || side3 + side1 <= side2
      raise TriangleError
    else 
      if self.side1 == self.side2 && self.side2  == self.side3
        return :equilateral
      elsif self.side1 == self.side2 || self.side1  == self.side3 || self.side2  == self.side3
        return :isosceles
      elsif self.side1 != self.side2 || self.side1  != self.side3 || self.side2  != self.side3
        return :scalene
  
      end
    end
    

  end
  class TriangleError < StandardError
    def message
      puts "ERRRORRR"
    end
  end
end

