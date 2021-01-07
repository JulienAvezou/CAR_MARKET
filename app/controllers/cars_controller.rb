class CarsController < ApplicationController
  def index
    @user = current_user
    @friends = current_user.friends
  
    if params[:query].present?
      sql_query = "name ILIKE :query OR specs ILIKE :query"
      @cars = Car.where(sql_query, query: "%#{params[:query]}%")
    else
      @cars = Car.select { |car| car.user_id != current_user.id }
    end
    
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
    @owner = User.find(@car.user_id)
    pros_and_cons = @car.pros_and_cons(@car.name)
    if CarFile.find_by(name: @car.name)
      file = CarFile.find_by(name: @car.name)
      @pros = file.pros
      @cons = file.cons
    end

    user_friends = current_user.friends
    owner_friends = @owner.friends
    @common_friends = user_friends & owner_friends
    @similar_cars = Car.select{ |car| car.id != @car.id && (car.name == @car.name || car.price == @car.price) }.take(2)
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.save

    redirect_to car_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:name, :price, :specs)
  end
end
