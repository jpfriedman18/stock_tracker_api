class StockPurchase < ActiveRecord::Base
  belongs_to :user, inverse_of: :stock_purchases, class_name: 'User'
end
