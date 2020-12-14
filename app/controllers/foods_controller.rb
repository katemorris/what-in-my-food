class FoodsController < ApplicationController
  def index
    @ingredient = params[:q]
    @foods = FoodFacade.make_food(@ingredient)
  end
end
