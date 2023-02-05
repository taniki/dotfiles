#!/usr/bin/fish

set url $argv[1]
set token $READWISE

curl https://readwise.io/api/v3/save/ \
    -H "Authorization: Token $token" \
    -X POST \
    -d "{\"url\": \"$url\"}" \
    -H "Content-Type: application/json"
