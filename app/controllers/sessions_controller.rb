class SessionsController < ApplicationController

  before_action :render_main_layout_if_format_html

  respond_to :json, :html

  def new
  end

  def create
    puts "SessionsController#create"
    @user = User.authenticate(params[:user][:email], params[:user][:password])
    puts "user: "
    p @user
    if @user 
      session[:user_id] = @user.id
      respond_to do |format|
        format.json {render :json => @user, :only => [:first_name, :email, :id]}
      end
    else
      render json: {}, status: 400
    end
  end

  def destroy
    session[:user_id] = nil
    respond_with nil
  end

  def logged_in_user
    if session[:user_id]
      render json: User.find_by_id(session[:user_id]), :only => [:first_name, :email, :id]
    end
  end

private

  def render_main_layout_if_format_html
    if request.format.symbol == :html
      render "layouts/application"
    end
  end

end
