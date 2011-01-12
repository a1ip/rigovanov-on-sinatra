# coding: utf-8
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
  @title = 'Моя персональная страничка'
  haml :index
end

get '/ru/' do
  @title = 'Моя персональная страничка'
  haml :index
end

get '/en/' do
  @title = 'My personal page'
  haml :index.en
end

# @@ index
# %div.title Hello world!!!!!

enable :inline_templates

__END__

@@ layout
%html
  %head
    %title 
      = @title
    %meta{:charset => 'utf-8'}
    %meta{:name => 'author', :content => 'Филипп Юрьевич Ригованов'}
    %meta{:name => 'robots', :content => 'index, follow'}
    %meta{:name => 'google-site-verification', :content => 'Nug-F4tqpLW7uI5iTleT6qzVCWWYfPhQUTosxdD6t28'}
  %body
    = yield
    / Yandex.Metrika counter
    %div{:style => "display:none;"}
      :javascript
        (function(w, c) {
            (w[c] = w[c] || []).push(function() {
                try {
                    w.yaCounter3224089 = new Ya.Metrika(3224089);
                     yaCounter3224089.clickmap(true);
                     yaCounter3224089.trackLinks(true);

                } catch(e) {}
            });
        })(window, 'yandex_metrika_callbacks');
    %script{:defer => "defer", :src => "//mc.yandex.ru/metrika/watch.js", :type => "text/javascript"}
    %noscript
      %div{:style => "position:absolute"}
        %img{:alt => "", :src => "//mc.yandex.ru/watch/3224089"}/
    / /Yandex.Metrika counter

