class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :wdpa_id
    	t.text :review
    	t.timestamps 
    end
  end
end
