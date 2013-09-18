class AddSiteToComments < ActiveRecord::Migration
	def change
		change_table :comments do |t|
			t.belongs_to :site 
		end
  end
end
