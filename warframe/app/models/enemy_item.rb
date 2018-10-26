class EnemyItem < ApplicationRecord
  belongs_to :item
  belongs_to :enemy
  belongs_to :rarity
end
