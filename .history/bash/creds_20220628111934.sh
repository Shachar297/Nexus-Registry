# Get Nexus admin initial password.

currentDirectory=

IFS='/' read -ra ADDR <<< "${}"
for i in "${ADDR[@]}"; do
  # process "$i"
done

containerName="installations_nexus_1"
nexusContainerID=$(docker ps -aq --filter="NAME=$containerName")
export userPass=$(docker container exec $nexusContainerID cat nexus-data/admin.password; echo)
echo $userPass