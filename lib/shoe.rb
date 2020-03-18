class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !(BRANDS.include?(@brand)) # this means that if the array called BRANDS does not include 
                                  #the @brand passed already then put that brand in the array.
                                  #otherwise discard the item. Essentially weeding out any duplicates.
    BRANDS << @brand
    end 
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end