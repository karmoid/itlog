class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.integer :component_id
      t.integer :connected_id

      t.timestamps
    end
	add_index :usages, [:component_id, :connected_id], unique: true    
  end
end
