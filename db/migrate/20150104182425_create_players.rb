class CreatePlayers < ActiveRecord::Migration
  def change
      create_table :players do |t|
      t.string :facebookid
      t.string :name
      t.string :first_name
      t.string :last_name
      t.integer :gender, default: 0, null: false
      t.string :age
      t.string :location
      t.integer :orientation, default: 0, null: false

      t.timestamps null: false
    end
  end
end
