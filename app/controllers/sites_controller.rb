class SitesController < ApplicationController
  require 'httparty'
  require 'json' 
  require 'PPApi'
 
  def index
    response = HTTParty.get("http://maps.googleapis.com/maps/api/geocode/json?address=Quito&sensor=false")
    @response_body = response
    results = response["results"].first
    geometry = results["geometry"]
    location = geometry["location"]
    lat = location["lat"].to_i
    lng = location["lng"].to_i
    @search_results=PPApi.search_result(lat,lng)
  end
end
