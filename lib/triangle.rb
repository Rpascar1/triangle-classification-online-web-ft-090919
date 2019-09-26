class Triangle
  
  attr_accessor :a, :b, :c
 
  def initialize(a,b,c)
    @a,@b,@c = a,b,c
  end
    
   def kind
    if @a == @b && @b == @c
      :equilateral
    elsif  
      @a == @b || @b == @c ||@a == @c
      :isosceles
     else
      :scalene
     end
   end
     
     def error?
      if @a + @b + @c < 3
        raise TriangleError
      else 
        if
       (@a + @b < @c) || (@b + @c < @a) || (@a + @c < @b)
        raise TriangleError  
        end
      end
     end
  
   class TriangleError < StandardError
   end
end

