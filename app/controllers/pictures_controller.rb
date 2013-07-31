class PicturesController < ApplicationController
  # Add respond_to blocks for all 7 actions

  def index
    @pictures = Picture.all
    respond_to do |format|
      format.html { render 'index' }
      format.json { render json: @pictures }
    end
  end

  def new
    respond_to do |format|
      format.html
    end
  end

  def create
    p = Picture.new
    p.url = params["url"]
    p.description = params["description"]
    p.favorite = params["favorite"]
    p.save

    respond_to do |format|
      format.html { redirect_to pictures_url }
    end
  end

  def show
    @p = Picture.find_by_id(params["id"])

    respond_to do |format|
      format.html
      format.json { render json: @p }
    end
  end

  def edit
    @p = Picture.find_by_id(params["id"])

    respond_to do |format|
      format.html
    end
  end

  def update
    p = Picture.find_by_id(params["id"])
    p.url = params["url"]
    p.description = params["description"]
    p.favorite = params["favorite"]
    p.save

    respond_to do |format|
      format.html { redirect_to p }
    end
  end

  def destroy
    p = Picture.find_by_id(params["id"])
    p.destroy

    respond_to do |format|
      format.html { redirect_to pictures_url }
    end
  end
end
