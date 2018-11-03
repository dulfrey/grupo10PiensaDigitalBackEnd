class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.integer :gauging
      t.references :eventtype, foreign_key: true
      t.datetime :date
      t.text :address
      t.integer :state

      t.timestamps
    end
  end
end
