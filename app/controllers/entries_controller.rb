class EntriesController < ApplicationController

  def index

  end

def new 
  @entry = Entry.new
  @entry.place_id = params[:place_id] 
  @place = Place.find(params[:place_id])
  end
  
  

    def create
      @entry = Entry.new(params["entry"])
      @entry.save


      @place["place_id"] = params["place_id"]


      redirect_to "/places/#{@entry.place.id}"
    end

    def show 

    end

end

