class RibbitsController < ApplicationController

  def index
    @ribbits = Ribbit.all
    @ribbit = Ribbit.new
  end

  def create
    ribbit = Ribbit.new(ribbits_params)
    ribbit.user_id = current_user.id

    flash[:error] = "Your Rabbit was over 140 characters" unless ribbit.save
    redirect_to root_url
  end

  private
  def ribbits_params
    params.require(:ribbit).permit(:content)
  end
end
