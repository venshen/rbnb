class Item < ApplicationRecord
  def new

  end
  def create
    @item = Item.new
  end
end
