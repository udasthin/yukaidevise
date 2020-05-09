class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(name:item_params[:name],price:item_params[:rank],user_id:current_user.id)
  end

  private

  def item_params
    params.require(:item).permit(:name,:rank)
  end

end
