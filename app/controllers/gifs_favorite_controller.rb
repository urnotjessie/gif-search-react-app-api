class GifsFavoriteController < ApplicationController

  def index
    render json: Gif.all
  end

  def create
    gif = Gif.new(gif_params)

    if gif.save
      render json: gif
    else
      render json: {message: gif.errors}, status: 400
    end
  end

  private
    def gif_params
      params.require(:gif).permit(:source, :images, :title)
    end
end
