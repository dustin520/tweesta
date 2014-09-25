class TagsController < ApplicationController
  def index
  end

  def new
  end

  def create
    user_id = params[:user_id]
    tag = params[:tag]
    puts "called tags controller with " + user_id + " and " + tag + "!"
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
