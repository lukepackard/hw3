class PlacesController < ApplicationController

def index 
  #puts 
    render :template => "places/index"
  @places = Place.all 
  # render :template => "places/index"
end 

def show 
  @place = Place.find_by({"id" => params["id"]}) 

end

def new

end

def create 

  @place = Place.new
  @place["title"] = params["title"]
  @place["description"] = params["description"]
  @place["posted on"] = params["posted_on"]
  
@Place.save

  redirect_to "/places"

end 
end


