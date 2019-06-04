class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = current_user.orders
  end

  def create
    @menu = Menu.find(params[:menu_id])
    @food = Food.find(params[:food_id])
    @order = Order.new(menu: @menu, food: @food, user: current_user)

    if @order.save
      redirect_to menus_path, notice: 'La orden ha sido registrada'
    else
      redirect_to menus_path, alert: 'La orden no ha podido ser registrada'
    end
  end
end
