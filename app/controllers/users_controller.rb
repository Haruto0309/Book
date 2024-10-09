class UsersController < ApplicationController
  def show
    @user = current_user
    @books = @user.books
    @new_book = Book.new
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
    if user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(user.id)
    else
      render edit_user_path(user.id)
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
