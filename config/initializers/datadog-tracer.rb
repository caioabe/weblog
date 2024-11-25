Datadog.configure do |c|
  c.env = "prod"
  c.service = "weblog"
  c.profiling.enabled = true
  c.appsec.enabled = true
end
