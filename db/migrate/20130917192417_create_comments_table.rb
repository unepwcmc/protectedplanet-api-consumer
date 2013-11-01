class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :commenter
    	t.text :review
    	t.integer :rating_value
    	t.timestamps 
    end
  end
end
