class SitesController < ApplicationController
  require 'httparty'
  require 'json'
  require 'PPApi'
  require 'wikipedia'

  def index
    @search_results = []
  end

  def search
    @search_results = []
    if params[:codigo].present?
      response = HTTParty.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{CGI.escape(params[:codigo])}&sensor=false")
      results = response["results"].first
      geometry = results["geometry"]
      location = geometry["location"]
      lat = location["lat"].to_i
      lng = location["lng"].to_i
      @search_results=PPApi.search_result(lat,lng)
      puts @search_result.inspect
      render 'index'
    end
  end

  def show
    id = params[:id]
    @site = PPApi.get_site(id)
    @page = Wikipedia.find(@site["official"]["NAME"])
    
  end
end

