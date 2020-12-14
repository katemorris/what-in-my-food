require 'rails_helper'

RSpec.describe 'As a user' do
  describe 'When I visit the homepage' do
    it 'I can search for an ingredient and see USDA foods that contain it' do
      visit root_path

      fill_in :q, with: 'sweet potatoes'
      click_on 'Search'

      expect(current_path).to eq(foods_path)
      expect(page).to have_content('Total foods with sweet potatoes: 45')
      expect(page).to have_css("li", :count => 10)

      within('#1119530') do
        description = 'SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY'.write_sentence
        ingredients = "A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT.".write_sentence
        expect(page).to have_content('728229015529')
        expect(page).to have_content(description)
        expect(page).to have_content('The Hain Celestial Group, Inc.')
        expect(page).to have_content(ingredients)
      end
    end

    xit 'Searching for nothing returns no results' do

    end

    xit 'Visit foods directly' do

    end
  end
end
