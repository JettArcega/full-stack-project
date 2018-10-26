class ItemsController < ApplicationController
  #The index action
  def index
    @items = Item.all
    @enemies = Enemy.all 
    @rarities = Rarity.all 
    @enemy_items = EnemyItem.all 
  end

  #The show action
  def action
    @item = Item.find(params[:id])
  end
end
