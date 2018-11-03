class CreateResponsableEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :responsable_events do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.decimal :state

      t.timestamps
    end
  end
end
