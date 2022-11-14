require 'open-uri'

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = JSON.parse(URI.open(url).read)

    id = params[:id]
    @flat = flats.find { |flat| flat["id"] == id.to_i }
  end
end
