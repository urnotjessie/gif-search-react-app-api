class GifsTrendingController < ApplicationController

  def index
    @gifs = RestClient::Request.execute(:method => "get",
        :url => "http://api.giphy.com/v1/gifs/trending?api_key=" + ENV['API_KEY'])
        render json: @gifs
  end

  def show
    target_id = params[:id]
    @gif = RestClient::Request.execute(:method => "get",
        :url => "http://api.giphy.com/v1/gifs/#{target_id}?api_key=" + ENV['API_KEY'])
        render json: @gif
  end

end
