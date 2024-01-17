class RestaurantsController < ApplicationController

    def index
      @restaurants = Restaurant.all
    end

    def show
      @restaurant = Restaurant.find(params[:id])
    end

    def create

      @review = Review.new(review_params)
      @review.restaurant = @restaurant
      @review.save
      redirect_to restaurant_path(@restaurant)
    end

    def new
      @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    end



  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

  end
