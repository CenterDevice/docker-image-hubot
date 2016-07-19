# Hubot Docker Image

This image has [hubot-bosun](https://github.com/lukaspustina/hubot-bosun) and [hubot-centerdevice](https://github.com/centerdevice/hubot-centerdevice) installed.

## Running

```
docker run -it
    -e HUBOT_AUTH_ROLES="admin=<user id,...> bosun=<user id,...> centerdevice=<user id,...>" \
    -e HUBOT_BOSUN_HOST="http://<Bosun Host>:8070" \
    -e HUBOT_BOSUN_ROLE=bosun \
    -e HUBOT_BOSUN_SLACK="<yes for Slack message formatting, otherwise no>" \
    -e HUBOT_BOSUN_LOG_LEVEL=info \
    -e HUBOT_BOSUN_TIMEOUT=60000 \
    -e HUBOT_CENTERDEVICE_DEPLOYMENT_BOSUN_ALERT="haproxy.backend.missing" \
    -e HUBOT_CENTERDEVICE_DEPLOYMENT_BOSUN_TAGS="host=loadbalancer*,domain=centerdevice.v.clusterb.centerdevice.local" \
    -e HUBOT_CENTERDEVICE_DEPLOYMENT_SILENCE_DURATION="1m" \
    -e HUBOT_CENTERDEVICE_ROLE="centerdevice" \
    -e HUBOT_CENTERDEVICE_LOG_LEVEL=info \
    -e HUBOT_CENTERDEVICE_BOSUN_TIMEOUT=60000 \
    -e HUBOT_CENTERDEVICE_SILENCE_CHECK_INTERVAL=10000
    -e HUBOT_PINGDOM_USERNAME=<pingdom user name> \
    -e HUBOT_PINGDOM_PASSWORD=<pingdom password> \
    -e HUBOT_PINGDOM_APP_KEY=<pingdom api key> \
    -e HUBOT_SLACK_TOKEN='<slack token>' \
    -e REDIS_URL='tcp://<redis host>:6379' \
    centerdevice/hubot
```

