class AddIdeaIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :idea_id, :integer
  end
end
