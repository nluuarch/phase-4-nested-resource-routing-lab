class UsersController < ApplicationController

  def index 
    if params[:user_id]
      user = User.find(params[:user_id])
      items = user.items
    else 
      reviews = Review.all
    end 
      render json: reviews, include: :user
  end


  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

end
