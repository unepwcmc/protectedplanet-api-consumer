class SitesController < ApplicationController
  require 'httparty'
  require 'json'
  require 'PPApi'

  def index
    @search_results = []
  end

  def search
    @search_results = []
    if params[:codigo].present?
      response = HTTParty.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{CGI.escape(params[:codigo])}&sensor=false")
      @response_body = response
      results = response["results"].first
      geometry = results["geometry"]
      location = geometry["location"]
      lat = location["lat"].to_i
      lng = location["lng"].to_i
      @search_results=PPApi.search_result(lat,lng)
      render 'index'
    end
  end

  def show
    @id = params[:id]
    site = PPApi.get_site(@id)
    @name = site["official"]["NAME"]
    @url = "http://protectedplanet.net/sites/#{@id}"
    @site =  Site.new(id: params[:id])
    @comment = Comment.new
  end
end

