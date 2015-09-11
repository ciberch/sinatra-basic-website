workers Integer(ENV['PUMA_WORKERS'] || 5)
threads_count = Integer(ENV['MAX_THREADS'] || 1)
threads threads_count, threads_count
preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 9190
environment ENV['RACK_ENV'] || 'development'
