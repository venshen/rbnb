class Item < ApplicationRecord
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    @item.save
  end

end
