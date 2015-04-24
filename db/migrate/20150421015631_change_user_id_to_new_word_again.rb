class ChangeUserIdToNewWordAgain < ActiveRecord::Migration
  def change
  	rename_column :questions, :something, :user_id
  end
end
