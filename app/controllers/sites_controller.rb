class SitesController < ApplicationController
  require 'httparty'
  require 'json' 
  require 'PPApi'
 
  def index
    # If the user has submitted a query
    if params[:codigo].present?
      response = HTTParty.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{params[:codigo]}&sensor=false")
      @response_body = response
      results = response["results"].first
      geometry = results["geometry"]
      location = geometry["location"]
      lat = location["lat"].to_i
      lng = location["lng"].to_i
      @search_results=PPApi.search_result(lat,lng)
      puts @search_results
    else
      @search_results = []
    end
  end
end
