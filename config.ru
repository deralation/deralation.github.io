require 'rack/contrib/try_static'

require 'rack/jekyll'
run Rack::Jekyll.new