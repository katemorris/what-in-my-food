class FoodFacade
  def self.make_food(query)
    results = FoodService.search(query)
    results[:foods].map do |food|
      Food.new(food)
    end
  end
end
