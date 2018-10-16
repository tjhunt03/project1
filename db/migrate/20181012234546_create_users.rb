class CreateUsers < ActiveRecord::Migration[5.2]
  def change


    
    create_table :users do |t|
      t.text :username
      t.date :dob
      t.text :job_title
      t.text :email
      t.text :password_digest
      t.integer :capital_required
      t.text :idea


      t.timestamps
    end
  end
end
