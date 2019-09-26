class Triangle
 
  def initialize(a,b,c)
    @a=a, @b=b, @c=c
  end
    
   def kind
   
    if @a == @b && @b == @c
      :equilateral
    elsif  
      a == b || b == c 
      :isosolese
     elsif 
      a != b && b != c
      :scalene
     end
     
     
     
     
     
     
   end
   
   
  
 
  class TriangleError < StandardError
  
  
  end
end
