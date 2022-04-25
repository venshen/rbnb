class ItemsController < ApplicationController
  def index
      @items = Item.all
  end
  def new
      @items = Item.new
  end

  # def creat
  #     @items = items.creat()
  # end
  def create
      @items = Item.new(items_params)
      @items.save

      # no need for app/views/restaurants/create.html.erb
      redirect_to items_path(@items)
  end

  private

  def items_params
      params.require(:items).permit(:id)
  end
end
