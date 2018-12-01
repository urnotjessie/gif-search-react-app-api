class GifsSearchController < ApplicationController
  def index
    search_term = params[:search]

    @gifs = RestClient::Request.execute(:method => "get",
        :url => "http://api.giphy.com/v1/gifs/search?q=" + search_term+ "&api_key=" + ENV['API_KEY'])
        render json: @gifs
  end
end
