class UsersController < ApplicationController

  def show
    @item = Item.where(user_id: current_user.id)
  end
end
