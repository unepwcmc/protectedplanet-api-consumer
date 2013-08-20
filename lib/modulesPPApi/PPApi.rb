module PPApi
	def self.search_result(lat,lng)
    response = HTTParty.get("http://protectedplanet.net/api2/sites/search_by_point/#{lat}/#{lng}?type=official")
    #@results1 = JSON.parse(response.body)
	end
end