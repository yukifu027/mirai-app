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
end
