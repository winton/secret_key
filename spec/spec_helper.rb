$TESTING=true
SPEC = File.dirname(__FILE__)
$:.unshift File.expand_path("#{SPEC}/../lib")

require 'secret_key'
require 'pp'

Spec::Runner.configure do |config|
end

# For use with rspec textmate bundle
def debug(object)
  puts "<pre>"
  puts object.pretty_inspect.gsub('<', '&lt;').gsub('>', '&gt;')
  puts "</pre>"
end

def reset
  FileUtils.rm_rf File.dirname(__FILE__) + "/tmp"
end