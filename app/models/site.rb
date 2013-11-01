class Site < ActiveRecord::Base
	has_many :comments
	has_many :ratings
	validates :lat, presence: true
end
