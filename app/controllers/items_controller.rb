class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :index, :create, :edit]
  def index
      @items = Item.all
  end

  def new
      @item = Item.new
  end

  def show
    @marker = User.geocoded.find(@item.user_id)
  end

  def create
      @item = Item.new(item_params)
      @item.user_id = current_user.id
      if @item.save
        redirect_to items_path(@items)
      else
        render :new
      end
  end

  def edit
  end

  private

  def item_params
    params.require(:item).permit(:picture_url, :price, :deposit, :category, :name, :address)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end
