class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.float :lat
      t.float :lng
      t.string :type
      t.integer :radius

      t.timestamps
    end
  end
end
