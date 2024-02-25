class EntriesController < ApplicationController

  def index
  render :inline => "<h1> Places I've Been </h1>"
  end
def new 
  @entry = Entry.new
  @entry.place_id = params["place_id"]
end

    def create
      @entry = Entry.new(params["entry"])
      @entry.save
      redirect_to "/places/#{@place.place.id}"
    end
end

