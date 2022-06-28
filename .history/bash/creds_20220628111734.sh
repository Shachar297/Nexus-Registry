# Get Nexus admin initial password.

curremt

containerName="installations_nexus_1"
nexusContainerID=$(docker ps -aq --filter="NAME=$containerName")
export userPass=$(docker container exec $nexusContainerID cat nexus-data/admin.password; echo)
echo $userPass