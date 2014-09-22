class SitesController < ApplicationController
  before_action :render_main_layout_if_format_html

  respond_to :json, :html


  def index
  end

  def new
  end

  def create
  end

  def search
    # TWITTER API CALL 
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_KEY']
      config.consumer_secret     = ENV['TWITTER_SECRET']
      config.access_token        = ENV['TWITTER_TOKEN']
      config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
    end

    @twitter_results = client.search("#coffee -rt", :lang => "en")

    p @twitter_results

    # INSTAGRAM API CALL
    @tag = params[:tag]

    @token = ENV['INSTAGRAM_TOKEN']
      request = Typhoeus.get(
        "https://api.instagram.com/v1/tags/#{:coffee}/media/recent?access_token=#{@token}",
        :params => {:name => @tag}
      )

    @results = JSON.parse(request.body)["data"]
    puts @results

    respond_with @results
    respond_with @twitter_results

  end

  def show
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
