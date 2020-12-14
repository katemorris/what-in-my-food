class Food
  attr_reader :id, :upc, :brand, :description, :ingredients
  def initialize(data)
    @id = data[:fdcId]
    @upc = data[:gtinUpc]
    @brand = data[:brandOwner]
    @description = data[:description]
    @ingredients = data[:ingredients]
  end
end
