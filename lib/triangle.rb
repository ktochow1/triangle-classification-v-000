class Triangle

attr_accessor :side1, :side2, :side3
 
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    
  end
  
  class TriangleError < StandardError
    def message
      puts Triangle::TriangleError
    end
  end
  
  def kind
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 && side2 > side3
      :isosceles
    elsif side1 < side2 && side2 == side3
      :isosceles
    elsif side1 == side3 && side2 < side1
      :isosceles
    elsif side1 != side2 && side1 != side2 && side2 != side3
      :scalene
    elsif side1 <= 0 && side2 <= 0 && side3 <= 0 
      elsif side1 == 0 && side2 == 0 && side3 == 0 
      
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    
    end
  end

end


# def get_married(person)
#     self.partner = person
#     if person.class != Person
#       begin
#         raise PartnerError
#       rescue PartnerError => error
#           puts error.message
#       end
#     else
#       person.partner = self
#     end
# end
