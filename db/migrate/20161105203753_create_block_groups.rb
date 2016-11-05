class CreateBlockGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :block_groups do |t|
      t.json :properties
      t.string :value

      t.timestamps
    end
  end
end
