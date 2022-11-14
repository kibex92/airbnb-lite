require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats

  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
  
  def index
  end

  def show
    id = params[:id]
    @flat = @flats.find { |flat| flat["id"] == id.to_i }
  end

  def set_flats
    @flats = JSON.parse(URI.open(URL).read)
  end
end
