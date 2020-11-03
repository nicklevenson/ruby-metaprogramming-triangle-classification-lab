class Triangle
  attr_accessor :length1, :length2, :length3
  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 + @length2 > @length3 && @length2 + @length3 > @length1 && @length1 + @length3 > @length2 && @length1 > 0 && @length2 > 0 && @length3 > 0
      if @length1 == @length2 && @length1 == @length3 && @length2 == @length3
        return :equilateral
      end
      if @length1 == @length2 || @length1 == @length3 || @length2 == @length3
        return :isosceles
      end
      if @length1 != @length2 && @length1 != @length3 && @length2 != @length3 
        return :scalene 
      end
    
    else
      begin
        raise TriangleError
     
      end
    end
  end
  
  
  class TriangleError < StandardError
    def message 
      puts "not a triangle."
    end
  end 

end
