class ChangeDatatypeForTaskDescription < ActiveRecord::Migration[6.1]
  def change
    change_column :tasks, :description, :text
  end
end
