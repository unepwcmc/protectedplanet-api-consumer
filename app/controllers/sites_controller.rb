class SitesController < ApplicationController
 require 'httparty'
    require 'json' 


 

def index
response= HTTParty.get("http://maps.googleapis.com/maps/api/geocode/json?address=Popayan&sensor=false")
     @response_body = response

      geocoding_results = response

      results = geocoding_results["results"]
      results = results[0]
      geometry = results["geometry"]
      location = geometry["location"]
      lat = location["lat"].to_i
      lng = location["lng"].to_i
      search_result(lat,lng)

end

  def search_result(lat,lng)

    response = HTTParty.get("http://protectedplanet.net/api2/sites/search_by_point/#{lat}/#{lng}?type=official")
    @results1 = JSON.parse(response.body)
  end





end
