
TOKEN='2ebb9bd6367e0a1db7ef77994765bdaf'
ID='2'

curl --include --request GET http://localhost:3000/stock_purchases \
  --header "Authorization: Token token=${TOKEN}"
