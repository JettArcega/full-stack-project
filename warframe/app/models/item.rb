class Item < ApplicationRecord
    validates :name, :description, :price, presence: true
    validates :price, numericality: true
end
