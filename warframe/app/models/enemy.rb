class Enemy < ApplicationRecord
    has_many :enemy_items
    has_many :items, through: :enemy_items

    validates :name, presence: true
end
