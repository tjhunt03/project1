class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.text :idea_title
      t.text :idea_description

      t.timestamps
    end
  end
end
