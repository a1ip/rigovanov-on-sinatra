# coding: utf-8
require 'rubygems'

# If you're using bundler, you will need to add these 2 lines
# require 'bundler'
# Bundler.setup

require 'sinatra'
require 'sinatra/r18n'
require 'haml'
configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot
  set :haml, :format => :html5 # default Haml format is :xhtml
  # TIP:  You can get you database information
  #       from ENV['DATABASE_URI'] (see /env route below)
end

before do
  session[:locale] = params[:locale] if params[:locale]
end

set :default_locale, 'ru'

get '/' do
  haml :index
end

get '/:locale/' do
  haml :index
end
