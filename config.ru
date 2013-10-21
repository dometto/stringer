require "rubygems"
require "bundler"

Bundler.require

#require "./fever_api"
#map "/fever" do
#  run FeverAPI::Endpoint
#end

require "./app"
require "rack/mount"
require "rack/rewrite"
use Rack::Rewrite do
  rewrite %r{^/css/(.*)}, '/stringer/css/$1'
  rewrite %r{^/js/(.*)}, '/stringer/js/$1'
end
run Stringer
