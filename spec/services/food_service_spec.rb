require 'rails_helper'

RSpec.describe FoodService do
  describe 'class methods' do
    it '.search()' do
        q = 'sweet potatoes'
        results = FoodService.search(q)
        expect(results).to be_a Hash
        expect(results[:foods].count).to eq(10)
        expect(results[:foods].first[:description]).to be_a String
    end
  end
end
