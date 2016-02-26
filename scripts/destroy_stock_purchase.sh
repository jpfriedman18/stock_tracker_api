#!/bin/bash
TOKEN='4abf8d2b887bd018cda9e1e0101370d7'
ID='3'

curl --include --request DELETE http://localhost:3000/stock_purchases/${ID} \
--header "Authorization: Token token=${TOKEN}"
