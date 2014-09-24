class AboutsController < ApplicationController

  before_action :render_main_layout_if_format_html

  def index
  end

  private

  def render_main_layout_if_format_html
    if request.format.symbol == :html
      render "layouts/application"
    end
  end
  
end
