timeout 30
worker_processes 5
preload_app true
pid "/root/parserizer/log/unicorn.pid"
stderr_path "/root/parserizer/log/unicorn.stderr.log"
stdout_path "/root/parserizer/log/unicorn.stdout.log"

before_exec do |server|
  ENV['BUNDLE_GEMFILE'] = File.expand_path('../Gemfile', File.dirname(__FILE__))
end
