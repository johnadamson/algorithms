desc 'Load a console in the environment.'
task :console => [ :environment ] do
  require 'irb'
  require 'irb/completion'
  ARGV.clear
  IRB.start
end

desc 'Load the environment.'
task :environment do
  Dir[ 'lib/*.rb' ].each { |modjule| require_relative modjule }
end

