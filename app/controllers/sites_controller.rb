class SitesController < ApplicationController
 require 'httparty'
 require 'json' 
 require  'PPApi'


def index
#binding.pry
nombre = params[:q]
response = HTTParty.get("http://maps.googleapis.com/maps/api/geocode/json?address=Popayan&sensor=false")
     @response_body = response

      geocoding_results = response

      results = geocoding_results["results"]
      results = results[0]
      geometry = results["geometry"]
      location = geometry["location"]
      lat = location["lat"].to_i
      lng = location["lng"].to_i
      @search_result= PPApi.search_result(lat,lng)

end
end
