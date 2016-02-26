#!/bin/bash
TOKEN='17f1b3866ed963114be1397b82908f93'
ID='3'

curl http://localhost:3000/sign-out/${ID} \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

  echo
