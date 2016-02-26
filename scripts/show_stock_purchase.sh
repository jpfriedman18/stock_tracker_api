TOKEN='c539d8feb257ead054c220af0ae62884'
ID='2'

curl --include --request GET http://localhost:3000/stock_purchases/${ID} \
  --header "Authorization: Token token=${TOKEN}"
