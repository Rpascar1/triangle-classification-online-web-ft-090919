class Triangle
 
  def initialize(a,b,c)
    @a=a, @b=b, @c=c
    
    if a == b && b == c
      :equilateral
    elsif  
      a == b || b == c 
      :isosolese
     elsif 
      a != b && b != c
      :scalene
     
     
     
     
     
     
     
   end
   
   
  
 
  class TriangleError < StandardError
  
  
  end
end
