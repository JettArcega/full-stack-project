class CreateEnemyItems < ActiveRecord::Migration[5.2]
  def change
    create_table :enemy_items do |t|
      t.references :item, foreign_key: true
      t.references :enemy, foreign_key: true
      t.references :rarity, foreign_key: true
      t.decimal :enemyItemDropChance
      t.decimal :enemyBlueprintDropChance

      t.timestamps
    end
  end
end
