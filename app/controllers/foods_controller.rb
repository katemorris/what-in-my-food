class FoodsController < ApplicationController
  def index
    if params[:q].nil?
      flash[:notice] = 'You need to search for something first!'
      redirect_to root_path
    elsif params[:q] == ""
      @foods = nil
    else
      @ingredient = params[:q]
      @foods = FoodFacade.make_food(@ingredient)
      @total_results = FoodFacade.results_count(@ingredient)
    end
  end
end
