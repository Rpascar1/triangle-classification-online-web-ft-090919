class Triangle
 
  def initialize(a,b,c)
    @a=a, @b=b, @c=c
  end
    
   def kind
    if @a == @b && @b == @c
      :equilateral
    elsif  
      @a == @b || @b == @c ||@a == @c
      :isosolese
     else
      :scalene
     end
   end
     
  class TriangleError < StandardError
    raise TriangleError if
    a <=0 || b <= 0 || c <= 0
  
  end
end
