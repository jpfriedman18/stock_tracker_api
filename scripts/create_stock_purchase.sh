#!/bin/bash
TOKEN='abce2d7579d781ddd91c8d0acc6447d9'

curl --include --request POST http://localhost:3000/stock_purchases \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "stock_purchases": {
    "ticker": "NLY",
    "purchase_price": 10,
    "shares_purchased": 100
  }
}'
