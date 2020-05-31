class PlacesController < ApplicationController
  def index
    @places = Place.all 
    return nil if params[:keyword] == ""
    @places_key = Place.where(['name LIKE ?', "%#{params[:keyword]}%"] ).limit(5)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show 
    @place = Place.find(params[:id])
    @comments = @place.comments.includes(:user)
    return nil if params[:keyword] == ""
    @places_key = Place.where(['name LIKE ?', "%#{params[:keyword]}%"] ).limit(5)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def new
    @place = Place.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  private
  def place_params
    params.require(:place).permit(:image, :name, :content, :webpage).merge(user_id: current_user.id)
  end
end
