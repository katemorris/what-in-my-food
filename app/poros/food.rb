class Food
  attr_reader :id, :upc, :brand, :description, :ingredients
  def initialize(data)
    @id = data[:fdcId]
    @upc = data[:gtinUpc]
    @brand = data[:brandOwner]
    @description = capitalize(data[:description])
    @ingredients = capitalize(data[:ingredients])
  end

  def capitalize(data)
    data.capitalize
  end
end
