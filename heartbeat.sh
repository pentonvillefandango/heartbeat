#!/bin/bash
## Another Comment
POLICY_ID="2e1079b4-e5ce-49f1-baab-defa34f8256b"

curl -k 'https://localhost/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H "X-APIKeys: key=$(cat /home/admin/hb/apikey)" --data-binary "{\"query\":\"mutation enablePolicy(\$policy_id: ID!) {\n  enablePolicy(id: \$policy_id) {\n    id\n    disabled\n    __typename\n  }\n}\",\"variables\":{\"policy_id\": \"$POLICY_ID\"}}" --compressed
