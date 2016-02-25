class CreateStockPurchases < ActiveRecord::Migration
  def change
    create_table :stock_purchases do |t|
      t.string :ticker
      t.string :name
      t.float :current_price
      t.float :purchase_price
      t.integer :shares_purchased
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
