class PlacesController < ApplicationController

def index 
  #puts 
  @places = Place.all 
  # render :template => "places/index"
end 

def show 
    @place = Place.all
    @places = Place.find(params[:id])
    @entries = Entry.where(place_id: @places.id)

end

def new

  @place = Place.new 

end

def create 

  @place = Place.new

  @place["name"] = params["location"]
  @place["created_at"] = params["posted on"]
  
@place.save

  redirect_to "/places"

end 
end


