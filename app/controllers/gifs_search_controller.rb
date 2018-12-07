class GifsSearchController < ApplicationController
  def index
    search_term = search_params
    @gifs = RestClient::Request.execute(:method => "get",
        :url => "http://api.giphy.com/v1/gifs/search?q=#{search_term}&api_key=" + ENV['API_KEY'])
        render json: @gifs
  end

  private
    def search_params
      params.require(:query).permit(:query)
    end
end
