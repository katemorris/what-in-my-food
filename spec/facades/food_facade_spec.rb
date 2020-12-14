require 'rails_helper'

RSpec.describe FoodFacade, type: :model do
  describe 'class methods' do
    it '.make_food' do
      q = 'sweet potatoes'
      results = FoodFacade.make_food(q)
      expect(results).to be_an Array
      expect(results.count).to eq(10)
      expect(results.first).to be_a Food
    end

    it '.results_count' do
      q = 'sweet potatoes'
      results = FoodFacade.results_count(q)
      expect(results).to be_an Integer
      expect(results).to eq(31834)
    end
  end
end
