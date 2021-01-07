class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
    @owner = User.find(@car.user_id)
    user_friends = current_user.friends
    owner_friends = @owner.friends
    @common_friends = user_friends & owner_friends
    @similar_cars = Car.select{ |car| car.id != @car.id && (car.name == @car.name || car.price == @car.price) }.take(2)
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id
    @car.save

    redirect_to car_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:name, :price, :specs)
  end
end
