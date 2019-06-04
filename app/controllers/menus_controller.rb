class MenusController < ApplicationController
  before_action :set_menu, only: :show
  before_action :authenticate_user!

  def index
    @menus = Menu.all
  end

  def show

  end

  private
  def set_menu
    @menu = Menu.find(params[:id])
  end
end
