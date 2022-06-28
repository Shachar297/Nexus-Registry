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


# Login to docker


docker login -u admin -p $userPass localhost:8083