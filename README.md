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

# TODO:

- [x] Think about data backup
- [ ] Use Kamal cron instead of the manual workaround defined in backup_to_bunny script
- [ ] Install open telemetry

# See logs from your container

I don't know why yet but, when using `kamal deploy` it kept sending an old image that was using cron (installing it). This made my container restart over and over again.
I found out using this with ssh (on host):
`docker logs --tail 50 --follow --timestamps <CONTAINER_ID>`
There was another problem I could identify from running the logs above. The sqlite did not have the correct permissions. So I had to `chown -R 1000 rails/storage`
