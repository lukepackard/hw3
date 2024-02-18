class PlacesController < ApplicationController

def index 
  @places = Place.all 

  render :template => "places/index"
end 

def show 
  @places = Place.find_by({"id" => 1}) 

end

# def new 
# def create 
# def create 


