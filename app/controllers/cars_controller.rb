class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
    @user = User.find(@car.user_id)
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
