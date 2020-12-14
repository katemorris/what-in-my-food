class FoodsController < ApplicationController
  def index
    @ingredient = params[:q]
    @foods = FoodFacade.make_food(@ingredient)
    @total_results = FoodFacade.results_count(@ingredient)
  end
end
