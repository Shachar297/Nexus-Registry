# Get Nexus admin initial password.



IFS='/' read -ra ADDR <<< "${PWD}"
for i in "${ADDR[@]}"; do
  # process "$i"
  echo ${AAR}
done

# containerName="installations_nexus_1"
# nexusContainerID=$(docker ps -aq --filter="NAME=$containerName")
# export userPass=$(docker container exec $nexusContainerID cat nexus-data/admin.password; echo)
# echo $userPass