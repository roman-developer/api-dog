require 'sidekiq-cron'

Sidekiq.configure_server do |config|
  Sidekiq::Cron::Job.load_from_hash YAML.load_file(File.expand_path('../../sidekiq-cron.yml', __FILE__))
end
