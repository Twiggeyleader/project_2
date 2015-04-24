class AddForeignKeyToAnswer < ActiveRecord::Migration
  def change
    add_reference :answers, :user, index: true
    add_foreign_key :answers, :users
    add_reference :answers, :question, index: true
    add_foreign_key :answers, :questions
  end
end
