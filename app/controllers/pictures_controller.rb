class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    render 'index'
  end

  def new
    render 'new'
  end

  def create
    p = Picture.new
    p.url = params["url"]
    p.description = params["description"]
    p.favorite = params["favorite"]
    p.save

    redirect_to 'http://localhost:3000/pictures'
  end
end
