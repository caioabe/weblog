Datadog.configure do |c|
  c.env = "prod"
  c.service = "blog"
  c.profiling.enabled = true
  c.appsec.enabled = true
end
