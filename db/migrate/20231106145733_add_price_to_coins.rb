class AddPriceToCoins < ActiveRecord::Migration[6.1]
  def change
    add_column :coins, :price, :decimal
  end
end
