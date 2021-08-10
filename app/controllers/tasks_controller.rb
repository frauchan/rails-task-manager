class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end



# class RestaurantsController < ApplicationController
#   before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

#   def new
#     @restaurant = Restaurant.new
#   end

#   def create
#     @restaurant = Restaurant.new(restaurant_params)
#     @restaurant.save

#     redirect_to restaurant_path(@restaurant)
#   end

#   def edit
#     # Find the restaurant we're editing
#     # @restaurant = Restaurant.find(params[:id])
#   end

#   def update
#     # Find the restaurant we're editing
#     # @restaurant = Restaurant.find(params[:id])

#     # Take the form input and update that restaurant
#     @restaurant.update(restaurant_params)

#     redirect_to restaurant_path(@restaurant)
#   end

#   def destroy
#     # @restaurant = Restaurant.find(params[:id])

#     @restaurant.destroy

#     redirect_to restaurants_path
#   end

#   private

#   # STRONG PARAMS
#   def restaurant_params
#     params.require(:restaurant).permit(:name, :address, :rating)
#   end

#   def set_restaurant
#     @restaurant = Restaurant.find(params[:id])
#   end
# end
