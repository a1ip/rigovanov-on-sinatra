require 'rubygems'

# If you're using bundler, you will need to add these 2 lines
# require 'bundler'
# Bundler.setup

require 'sinatra'
require 'haml'
configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot
  set :haml, :format => :html5 # default Haml format is :xhtml
  # TIP:  You can get you database information
  #       from ENV['DATABASE_URI'] (see /env route below)
end


get '/' do
  haml :index
end

enable :inline_templates

__END__

@@ layout
%html
  %head
    = yield
  %body

# @@ index
# %div.title Hello world!!!!!
