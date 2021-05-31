class FlatsController < ApplicationController
  before_action :fetch_flats # this sets the @flats ivar

  # action list being triggered by
  # get '/flats'
  def list
  end

  # GET /show?id=<id>
  def show
    id = params[:id].to_i # params is ALWAYS a hash with strings

    # returns the flat where the flat['id'] == id
    @flat = @flats.find { |flat| flat['id'] == id }
  end

  private

  def fetch_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(RestClient.get(url).body)
  end
end
