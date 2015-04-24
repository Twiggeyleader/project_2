class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :body
      t.references :User, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :Users
  end
end
