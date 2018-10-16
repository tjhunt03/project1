class RemoveIdeaFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :idea, :text
  end
end
