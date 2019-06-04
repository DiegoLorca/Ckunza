class TablesController < ApplicationController
  before_action :set_table, only: :show
  before_action :authenticate_user!

  def index
    @tables = Table.all
  end

  def show
  end

  private
    def set_table
      @table = Table.find(params[:id])
    end

end
