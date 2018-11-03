class CreateEventcommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :eventcommunities do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.string :comentario
      t.date :fechacomentario
      t.integer :estado

      t.timestamps
    end
  end
end
