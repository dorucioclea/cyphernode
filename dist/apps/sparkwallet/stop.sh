export SHARED_HTPASSWD_PATH
export GATEKEEPER_DATAPATH
export LIGHTNING_DATAPATH
export APP_SCRIPT_PATH

if [ "$DOCKER_MODE" = "swarm" ]; then
  docker stack rm $APP_ID
elif [ "$DOCKER_MODE" = "compose" ]; then
  docker-compose -f $APP_SCRIPT_PATH/docker-compose.yaml down
fi
