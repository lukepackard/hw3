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

      @place ["place_id"] = "params["place_id]"


      redirect_to "/places/#{@entry.place.id}"
    end

    def show 
      <p>
      <a href="/entries/new?place_id=<%= @place.id %>">New entry for <%= @place.name %></a>
    </p>
    end

end

