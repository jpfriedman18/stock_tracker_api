#!/bin/bash
TOKEN='18ed2198ba55b52600b8e90db8850918'
ID='2'

curl http://localhost:3000/sign-out/${ID} \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

  echo
