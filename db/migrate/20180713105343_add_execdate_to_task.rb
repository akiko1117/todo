class AddExecdateToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :execdate, :date
  end
end
