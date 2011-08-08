class AddUserIdToItemTypes < ActiveRecord::Migration
  def self.up
    add_column :item_types, :user_id, :integer
  end

  def self.down
    remove_column :item_types, :user_id
  end
end
