class CreateGeoid2010s < ActiveRecord::Migration[5.0]
  def change
    create_table :geoid2010s do |t|
      t.integer :land_area
      t.integer :water_area
      t.string :block_id
      t.string :county_id
      t.string :funcstat
      t.string :geoid_id
      t.float :lat
      t.float :lon
      t.string :mtfcc
      t.string :name
      t.string :state_id
      t.string :tract_id
      t.string :uace
      t.string :uatype
      t.string :ur

      t.timestamps
    end
    add_index :geoid2010s, :geoid_id
  end
end
