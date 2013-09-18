class CreateUniverses < ActiveRecord::Migration
  def change
    create_table :universes do |t|
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
