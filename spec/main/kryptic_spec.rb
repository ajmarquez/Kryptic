require 'spec_helper'

RSpec.describe 'hello app' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
  
it 'says hi' do
  get '/'
  end
end
