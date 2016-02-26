#!/bin/bash
TOKEN='09a54dae7f06ea1f12ea2b0ae4410619'
ID='3'

curl --include --request PATCH http://localhost:3000/stock_purchases/${ID} \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "stock_purchases": {
    "ticker": "NLY",
    "purchase_price": 15,
    "shares_purchased": 200
  }
}'
