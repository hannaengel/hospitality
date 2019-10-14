class Meeting < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :action_items
    has_many :agenda_items
end
