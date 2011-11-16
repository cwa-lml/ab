# Install dependencies for this app with rubygems; 
# installing gems requires sudo if not using RVM. 
# Use RVM: http://beginrescueend.com/.
#
# $ gem install --no-ri --no-rdoc rack sinatra 
# sinatra-static-assets sinatra-flash datamapper
# dm-sqlite-adapter haml
#
# Developed against ruby 1.8.7-head
#
# Documentation for Sinatra framework and HAML 
# templating language:
#
# http://www.sinatrarb.com/intro.html
# http://haml-lang.com/docs/yardoc/file.HAML_REFERENCE.html
#
# Documentation for datamapper database library:
#
# http://datamapper.org/docs/
#
# To set up the sqlite3 database:
#
# $ ruby run/setup
#
# This has to be done in each environment.
#
# Documentation for miscellaneous libraries:
#
# https://github.com/wbzyl/sinatra-static-assets/

require 'rubygems'
require 'sinatra'
require 'sinatra/static_assets'
require 'sinatra/flash'
require 'dm-core'
require 'dm-aggregates'
require 'dm-validations'
require 'dm-timestamps'
require 'dm-migrations'
require 'haml'

require 'settings'

Dir['helpers/*.rb'].each {|file| require file }
Dir['app/*.rb'].each {|file| require file }

# http://rubydoc.info/github/datamapper/dm-core/master/DataMapper#finalize-class_method

DataMapper.finalize