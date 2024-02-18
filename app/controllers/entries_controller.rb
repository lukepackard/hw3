class EntriesController < ApplicationController

  def index
  render :inline => "<h1> Places I've Been </h1>"
  end

end
