class SitesController < ApplicationController

def search_by_point
params = { :lat => 50, :lng => 20, :radius => 100.0, :type => "official", :id => 1 }
  if params[:lat] && params[:lng]
    params[:radius] ||= 200.0
    geo = []
    geo << params[:lat].to_f * Math::PI/180
    geo << params[:lng].to_f * Math::PI/180
    filter = {"geodist" => Range.new(0.0, params[:radius].to_f * 1000)}

    type = params[:type]

    @sites = Site.search 



    @json = []

    @sites.each do |site|
      @json << site.to_standards_hash({}, type)
    end

    render :json => @json.to_json
  end
end




end
