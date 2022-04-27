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
      if @item.save
        redirect_to items_path(@items)
      else
        render :new
  end

  private

  def item_params
      params.require(:item).permit(:picture_url, :price, :deposit, :category, :name, :address)
  end
end
