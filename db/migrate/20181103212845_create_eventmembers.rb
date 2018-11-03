class CreateEventmembers < ActiveRecord::Migration[5.2]
  def change
    create_table :eventmembers do |t|
      t.references :event, foreign_key: true
      t.string :nombreintegrante
      t.integer :estado

      t.timestamps
    end
  end
end
