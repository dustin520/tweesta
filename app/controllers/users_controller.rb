class UsersController < ApplicationController

  before_action :render_main_layout_if_format_html

  def index
  end

  def new
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def render_main_layout_if_format_html
    if request.format.symbol == :html
      render "layouts/application"
    end
  end

end
