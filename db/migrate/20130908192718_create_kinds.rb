class CreateKinds < ActiveRecord::Migration
  def change
    create_table :kinds do |t|
      t.string :name
      t.text :note
      t.integer :universe_id

      t.timestamps
    end
  end
end
