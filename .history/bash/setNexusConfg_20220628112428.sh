source creds.sh

if [[ $userPass -eq "" ]]; then
userPass=12345
fi

echo "----- Nexus admin password :   $userPass"

# Create A new Repository.
curl -X POST \
    -H "Content-Type: application/json" \
    -d "@../config/repo.json" \
    -u admin:$userPass \
    http://localhost:8081/service/extdirect

# Set Docker Realm for docker authentication.
curl \
    -X POST \
    -H "Content-Type: application/json" \
    -d "@../config/dockerToken.json" \
    -u admin:$userPass \
    http://localhost:8081/service/extdirect

# curl \
#     -X POST \
#     -H "Content-Type: application/json" \
#     -d "@../config/blob.json" \
#     -u admin:$userPass \
#     http://localhost:8081/service/rest/v1/blobstores/file?_dc=1655215123643
# Login to docker


docker login -u admin -p $userPass localhost:80