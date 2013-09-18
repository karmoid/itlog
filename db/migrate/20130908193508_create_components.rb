class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.text :note
      t.integer :kind_id

      t.timestamps
    end
  end
end
