class UsersController < ApplicationController

  before_action :render_main_layout_if_format_html

  respond_to :json, :html

  def index
  end

  def new
    
  end

  def create
    respond_with User.create(user_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end


  def render_main_layout_if_format_html
    if request.format.symbol == :html
      render "layouts/application"
    end
  end

end
