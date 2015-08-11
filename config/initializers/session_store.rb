# Be sure to restart your server when you modify this file.

# Rails.application.config.session_store :cookie_store, key: '_relaxy_session'

if Rails.env.production? and ENV['REDISTOGO_URL']
  redis_uri = URI(ENV['REDISTOGO_URL'])
  Relaxy::Application.config.session_store :redis_store, :servers => {
    host: redis_uri.host,
    port: redis_uri.port,
    password: redis_uri.password,
    namespace: "relaxy:sessions"
  }, expire_in: 120.minutes
else
  # test development の設定
  Rails.application.config.session_store :cookie_store, key: '_relaxy_session'
end