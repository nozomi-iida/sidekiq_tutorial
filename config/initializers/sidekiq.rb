Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch('REDIS_URL'), id: nil }
  config.log_formatter = Sidekiq::Logger::Formatters::JSON.new
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch('REDIS_URL') }
end
