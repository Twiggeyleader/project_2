class ChangeUserIdToNewWord < ActiveRecord::Migration
  def change
  	rename_column :questions, :User_id, :something
  end
end
