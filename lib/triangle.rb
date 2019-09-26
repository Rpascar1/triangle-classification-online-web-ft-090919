class Triangle
 
  def initialize(a,b,c)
    @a=a, @b=b, @c=c
  end
    
   def kind
     error
    if @a == @b && @b == @c
      :equilateral
    elsif  
      @a == @b || @b == @c ||@a == @c
      :isosolese
     else
      :scalene
     end
   end
     
     def error
      if a <=0 || b <= 0 || c <= 0
        raise TriangleError
      else 
        if
       (a + b < c) || (b + c < a) || (a + c < b)
        raise TriangleError  
        end
      end
     end
  
   class TriangleError < StandardError
   end
end

