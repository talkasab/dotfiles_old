#!/opt/local/bin/ruby -w
IRB.conf[:VERBOSE] = true
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

require 'rubygems' rescue nil
require 'irb/completion'
require 'irb/ext/save-history'
require 'pp'
require 'utility_belt'
require 'wirble'

# load wirble
Wirble.init
Wirble.colorize

$LOAD_PATH << File.expand_path("#{ENV['HOME']}/.ruby")

if ENV['RAILS_ENV']
  load File.dirname(__FILE__) + "#{ENV['HOME']}/.railsrc"
end

STDERR.puts "Starting Terry's customized IRB..."