# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

```bash
# I'm still unsure how to automate this on the host server
docker run -d --name dd-agent \
-p 127.0.0.1:8126:8126/tcp \
-e DD_API_KEY=<API_KEY> \
-e DD_SITE="us5.datadoghq.com" \
-e DD_DOGSTATSD_NON_LOCAL_TRAFFIC=true \
-e DD_APM_ENABLED=true \
-e DD_APM_NON_LOCAL_TRAFFIC=true \
-e DD_APM_RECEIVER_SOCKET=/var/run/datadog/apm.socket \
-e DD_DOGSTATSD_SOCKET=/var/run/datadog/dsd.socket \
-v /var/run/datadog:/var/run/datadog \
-v /var/run/docker.sock:/var/run/docker.sock:ro \
-v /proc/:/host/proc/:ro \
-v /sys/fs/cgroup/:/host/sys/fs/cgroup:ro \
-v /var/lib/docker/containers:/var/lib/docker/containers:ro \
gcr.io/datadoghq/agent:7
```