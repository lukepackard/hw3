class PlacesController < ApplicationController

def index 
  #puts 
  @places = Place.all 
  # render :template => "places/index"
end 

def show 
    @place = Place.find(params[:id])
 # @entries =Entries.where({"place_id" => @place["id"]})

 <p>
  <a href="/entries/new?place_id=<%= @place.id %>">New entry for <%= @place.name %></a>
</p>

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


