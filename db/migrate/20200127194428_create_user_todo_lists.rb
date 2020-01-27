class CreateUserTodoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :user_todo_lists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
