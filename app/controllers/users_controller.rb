class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to @user, notice: "Thank you for signing up for Rabbit!"
    else
      render 'new'
    end
  end

  private
  def users_params
    params.require(:user).permit(:email, :name, :username,
                                 :password, :password_confirmation)
  end
end
