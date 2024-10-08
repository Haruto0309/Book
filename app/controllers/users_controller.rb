class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def index
    @users = User.all
    @user = current_user
    @new_book = Book.new
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
