workers 5
threads 1, 1
#
# ssl_bind '127.0.0.1', '9190', { key: "config/ssl/localhost.key", cert: "config/ssl/localhost.crt" }

preload_app!

rackup      DefaultRackup
port        9190
environment ENV['RACK_ENV'] || 'development'
