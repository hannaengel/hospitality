class AddLasnameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string
    add_column :users, :email, :string
    add_column :users, :password_digest, :string

    create_table :users_meetings do |t|
      t.integer :user_id
      t.integer :meeting_id 
    end

    add_index(:users_meetings, [:meeting_id, :user_id])
   

  end
end
