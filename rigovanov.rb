require 'rubygems'

# If you're using bundler, you will need to add these 2 lines
# require 'bundler'
# Bundler.setup

require 'sinatra'
require 'haml'

set :haml, :format => :html5 # default Haml format is :xhtml

get '/' do
  haml :index
end
