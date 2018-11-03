class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.integer :phone
      t.integer :age
      t.string :gender
      t.decimal :state
      t.string :password_digest

      t.timestamps
    end
  end
end