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
    
    @tag = params[:tag]
    puts "***** TAG *******"
    p @tag

    # TWITTER API CALL 
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_KEY']
      config.consumer_secret     = ENV['TWITTER_SECRET']
      config.access_token        = ENV['TWITTER_TOKEN']
      config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
    end

    @twitter_results = client.search("\##{@tag} -rt", :lang => "en").take(13)

    # INSTAGRAM API CALL

    @token = ENV['INSTAGRAM_TOKEN']
      request = Typhoeus.get(
        "https://api.instagram.com/v1/tags/#{@tag}/media/recent?access_token=#{@token}",
        :params => {:name => @tag}
      )

    @results = JSON.parse(request.body)["data"]

    @all_results = {
      :instagram => @results,
      :twitter => @twitter_results
    }
    # puts @all_results
    render json: @all_results

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
