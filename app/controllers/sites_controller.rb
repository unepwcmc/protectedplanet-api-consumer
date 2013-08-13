class SitesController < ApplicationController




def index
    require 'httparty'
    require 'json'
    lat=20
    lng=52
    response = HTTParty.get("http://protectedplanet.net/api2/sites/search_by_point/#{lat}/#{lng}")
    @response_body = response.body
    @result = JSON.parse(@response_body)

  end

end
