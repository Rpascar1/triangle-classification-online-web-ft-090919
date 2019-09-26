class Triangle
  
  attr_read :a, :b, :c
 
  def initialize(a,b,c)
    @a=a, @b=b, @c=c
  end
    
   def kind
    if @a == @b && @b == @c
      :equilateral
    elsif  
      @a == @b || @b == @c ||@a == @c
      :isoscelese
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

