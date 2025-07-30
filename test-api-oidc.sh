export KC_TOKEN=$(curl -s -X POST 'http://keycloak:8081/realms/redpanda/protocol/openid-connect/token' -H 'Content-Type: application/x-www-form-urlencoded' -d 'client_id=redpanda' -d 'username=clark.kent' -d 'password=password' -d 'grant_type=password' -d 'client_secret=<your client secret>' | jq -r '.access_token')
echo "===== HTTP Proxy ====="
curl -s http://localhost:18082/topics -H "Authorization: Bearer $KC_TOKEN" | jq
echo "===== Admin API ====="
curl -s http://localhost:19644/v1/node_config -H "Authorization: Bearer $KC_TOKEN" | jq
echo "===== Schema Registry ====="
curl -s http://localhost:18081/subjects -H "Authorization: Bearer $KC_TOKEN" | jq 