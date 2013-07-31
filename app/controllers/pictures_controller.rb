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

    redirect_to pictures_url
  end

  def show
    @p = Picture.find_by_id(params["id"])

    render 'show'
  end

  def edit
    @p = Picture.find_by_id(params["id"])

    render 'edit'
  end

  def update
    p = Picture.find_by_id(params["id"])
    p.url = params["url"]
    p.description = params["description"]
    p.favorite = params["favorite"]
    p.save

    redirect_to picture_url(p.id)
  end

  def destroy
    p = Picture.find_by_id(params["id"])
    p.destroy

    redirect_to pictures_url
  end
end
