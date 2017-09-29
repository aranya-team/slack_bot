Lita.configure do |config|
  config.robot.name = 'lita'
  config.robot.mention_name = 'lita'
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV['SLACK_TOKEN']
  config.adapters.slack.link_names = true
  config.adapters.slack.parse = 'full'
  config.adapters.slack.unfurl_links = false
  config.adapters.slack.unfurl_media = false
  config.redis[:host] = 'localhost'
  config.redis[:port] = 6379
  config.http.port = 5002
  config.handlers.keepalive.url = 'http://127.0.0.1:5002'
end

require './handlers/welcome'
