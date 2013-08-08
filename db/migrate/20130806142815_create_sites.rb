class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.float :lat
      t.float :lng
      t.integer :radius
      t.integer :type

      t.timestamps
    end
  end
end
