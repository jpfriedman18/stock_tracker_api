class StockPurchase < ActiveRecord::Base
  belongs_to :user, inverse_of: :stock_purchases, class_name: 'User'

  validate :is_valid_ticker_symbol, on: :create

  def is_valid_ticker_symbol
    response = HTTParty.get('http://dev.markitondemand.com/Api/v2/Quote/json', {query: { symbol: ticker }})
    unless JSON.parse(response.body)['Symbol'] == ticker
      errors.add(:ticker, "not a valid ticker symbol")
    end
  end

  def get_name
    response = HTTParty.get('http://dev.markitondemand.com/Api/v2/Quote/json', {query: { symbol: ticker }})
    JSON.parse(response.body)['Name']
  end
end
