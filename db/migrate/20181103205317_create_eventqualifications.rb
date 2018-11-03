class CreateEventqualifications < ActiveRecord::Migration[5.2]
  def change
    create_table :eventqualifications do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :calificacion
      t.string :comentario
      t.integer :estado

      t.timestamps
    end
  end
end
