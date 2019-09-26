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
     
     def error
      if a <=0 || b <= 0 || c <= 0
        raise TriangleError
      else 
        if
       (a + b < c) || (b + c < a) || (a + c < b)
        raise TriangleError    
      end
     end
  
   class TriangleError < StandardError
   end
end



  it 'knows that triangles violating triangle inequality are illegal' do
    expect{Triangle.new(1, 1, 3).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 2' do
    expect{Triangle.new(2, 4, 2).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 3' do
    expect{Triangle.new(7, 3, 2).kind}.to raise_error(Triangle::TriangleError)
  end