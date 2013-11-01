class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.string :voter_ip

      t.timestamps
    end
  end
end
