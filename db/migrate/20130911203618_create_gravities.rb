class CreateGravities < ActiveRecord::Migration
  def change
    create_table :gravities do |t|
      t.integer :component_id
      t.integer :connected_id
      t.timestamps
    end
	add_index :gravities, [:component_id, :connected_id], unique: true    
  end
end
