#
class User < ActiveRecord::Base
  include Authentication
  has_many :stock_purchases, inverse_of: :user, foreign_key: 'user_id'
end
