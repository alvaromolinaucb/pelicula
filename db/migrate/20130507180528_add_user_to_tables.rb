class AddUserToTables < ActiveRecord::Migration
  def change
  	add_column :movies, :user_id, :integer
  	add_column :reviews, :user_id, :integer
  	add_column :califications, :user_id, :integer

  end
end
