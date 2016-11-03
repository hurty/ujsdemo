class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.js { render "create_success"}
        format.html { redirect_to users_path } # We can also do a good old full page refresh
      else
        format.js { render "create_error"}
      end
    end
  end

  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone)
    end
end
