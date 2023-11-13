class FlatsController < ApplicationController
  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  def index
    # @flats = ['flat 1', 'flat 2']
    remote_json = RestClient.get(URL)
    @flats = JSON.parse(remote_json) # array of hashes
  end
end
