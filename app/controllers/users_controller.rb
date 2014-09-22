class UsersController < ApplicationController
  def index

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


  end

  def create
    
  end

  def results

    # TWITTER GEM METHOD
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_KEY']
      config.consumer_secret     = ENV['TWITTER_SECRET']
      config.access_token        = ENV['TWITTER_TOKEN']
      config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
    end

    @results = client.search("#coffee -rt", :lang => "ja").first.text

    puts @results

    ## TYPHOEUS METHOD
    # @query = params[:query]

    # # request = Typhoeus.get("", :params => {:s => @query})
    # request = Typhoeus.get("https://api.twitter.com/1.1/search/tweets.json?q=coffee")

    # # ["statuses"]["text"] -> returns tweet in string/text
    # @results = JSON.parse(request.body)["text"]
    # # ["entities"]["hashtags"] -> returns array
    # @tags = JSON.parse(request.body)["entities"]["hashtags"]

    # puts @results
    # puts @tags

  end

  def show

  end

  def update
  end

  def destroy
  end
end
