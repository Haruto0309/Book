class UsersController < ApplicationController
  def show
    @user = current_user
    @books = @user.books
  end

  def edit
    @user = current_user
  end

  def index
    @users = User.all
    @user = current_user
    @new_book = Book.new
  end

  def update
    user = current_user
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
