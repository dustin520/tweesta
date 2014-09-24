class SessionsController < ApplicationController

  before_action :render_main_layout_if_format_html

  respond_to :json, :html

  def new
  end

  def create
    @user = User.authenticate(params[:user][:email], [:user][:password])
    if @user
      session[:user_id] = @user.id
      # respond_with 
    end
  end

  def destroy
    session[:user_id] = nil
    respond_with nil 
  end

private

  def render_main_layout_if_format_html
    if request.format.symbol == :html
      render "layouts/application"
    end
  end

end
