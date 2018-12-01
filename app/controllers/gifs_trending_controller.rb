class GifsTrendingController < ApplicationController

  def index
    @gifs = RestClient::Request.execute(:method => "get",
        :url => "http://api.giphy.com/v1/gifs/trending?api_key=" + ENV['API_KEY'])
        render json: @gifs
  end
  
end
