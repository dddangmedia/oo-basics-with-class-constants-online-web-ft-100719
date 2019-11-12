class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = []

  def initialize(brand)
    @brand = brand
    
    BRANDS.each do |bra|
      if bra != @brand
        BRANDS << @brand 
      end
    end
#    if !(BRANDS.include?(@brand))
#      BRANDS << @brand
#    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end