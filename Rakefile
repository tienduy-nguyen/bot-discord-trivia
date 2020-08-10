lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

desc 'Run the bot'
task :default do
  require 'thp'
rescue Interrupt
  exit
end