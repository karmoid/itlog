class CreateGravities < ActiveRecord::Migration
  def change
    create_table :gravities, id: false do |t|
      t.integer :component_id
      t.integer :connected_id
      t.timestamps
    end
  end
end
