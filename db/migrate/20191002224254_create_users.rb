class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.timestamps
    end

    create_table :users_meetings do |t|
      t.integer :user_id
      t.integer :meeting_id 
    end

    add_index(:users_meetings, [:meeting_id, :user_id])
  end 
end

