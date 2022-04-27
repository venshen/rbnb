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
      @item = Item.new(item_params)
      @item.user_id = current_user.id
      @item.save

      redirect_to items_path(@items)
  end

  private

  def item_params
      params.require(:item).permit(:id, :picture_url, :price, :deposit, :category, :name)
  end
end
