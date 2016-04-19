# spec/spec_helper.rb
require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../app.rb', __FILE__


module RSpecMixin
  include Rack::Test::Methods
#   def app() Sinatra::Application end
# end
def app
    KrypticApp
  end
end

# For RSpec 2.x and 3.x
RSpec.configure { |c| c.include RSpecMixin }

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end
