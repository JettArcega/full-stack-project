class Item < ApplicationRecord
    has_many :enemy_items
    has_many :enemies, through: :enemy_items

    validates :name, :description, :price, presence: true
    validates :price, numericality: true
end
