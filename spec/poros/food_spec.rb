require 'rails_helper'

RSpec.describe Food do
  let(:food) do
    Food.new({
      :fdcId=>1119530,
      :description=>"SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY",
      :lowercaseDescription=>"sweets medley sel gris, batata, sweet potato, purple sweet potato real vegetable chips, sweets medley",
      :dataType=>"Branded",
      :gtinUpc=>"728229015529",
      :publishedDate=>"2020-11-13",
      :brandOwner=>"The Hain Celestial Group, Inc.",
      :ingredients=>"A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT.",
    }
    )
  end

  describe 'attribute accessors' do
    it 'has attributes' do
      description = "SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY"
      ingredients = "A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT."
      expect(food.id).to eq(1119530)
      expect(food.upc).to eq('728229015529')
      expect(food.brand).to eq('The Hain Celestial Group, Inc.')
      expect(food.description).to eq(description.capitalize)
      expect(food.ingredients).to eq(ingredients.capitalize)
    end
  end

  describe 'instance methods' do
    it '.capitalize()' do
      description = "SWEETS MEDLEY SEL GRIS"
      expect(description.capitalize).to eq('Sweets medley sel gris')
    end
  end
end
