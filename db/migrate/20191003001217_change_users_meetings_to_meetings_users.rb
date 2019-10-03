class ChangeUsersMeetingsToMeetingsUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :users_meetings, :meetings_users
  end
end
