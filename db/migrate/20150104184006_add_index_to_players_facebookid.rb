class AddIndexToPlayersFacebookid < ActiveRecord::Migration
  def change
    add_index :players, :facebookid, unique: true
  end
end
