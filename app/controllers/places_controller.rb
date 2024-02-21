class PlacesController < ApplicationController

def index 
  #puts 
  @places = Place.all 
  # render :template => "places/index"
end 

def show 
  @place = Place.find_by({"id" => params["id"]}) 
  @entries =Entries.where({"place_id" => @place["id"]})
end

def new

end

def create 

  @place = Place.new

  @place["name"] = params["location"]
  @place["created_at"] = params["posted on"]
  
@place.save

  redirect_to "/places"

end 
end


