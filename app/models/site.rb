class Site < ActiveRecord::Base

def search
response=HTTParty.get("http://protectedplanet.net/api2/sites/search_by_point/#{lat}/#{lng}?#{radius}")
@response_body = response.body

end

end
