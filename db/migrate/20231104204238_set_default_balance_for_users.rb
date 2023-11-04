class SetDefaultBalanceForUsers < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :balance, :float, default: 0.0
    User.where(balance: nil).update_all(balance: 0.0)
  end

  def down
    change_column :users, :balance, :float, default: nil
  end
end
