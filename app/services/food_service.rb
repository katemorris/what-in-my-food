class FoodService
  def self.search(query)
    parse_data(query)
  end

  private

  def self.connection
    Faraday.new('https://api.nal.usda.gov') do |f|
      f.params['api_key'] = ENV['USDA_KEY']
    end
  end

  def self.food_endpoint(query)
    connection.get("/fdc/v1/foods/search?ingredients=#{query}&pageSize=10")
  end

  def self.parse_data(query)
    json_body = JSON.parse(food_endpoint(query).body, symbolize_names: true)
  end
end
