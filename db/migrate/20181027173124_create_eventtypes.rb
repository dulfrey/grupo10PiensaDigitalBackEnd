class CreateEventtypes < ActiveRecord::Migration[5.2]
  def change
    create_table :eventtypes do |t|
      t.text :description
      t.decimal :state

      t.timestamps
    end
  end
end
