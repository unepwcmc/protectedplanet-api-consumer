class Site < ActiveRecord::Base
	has_many :comments
	validates :lat, presence: true
end
