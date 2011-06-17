require 'service'
require 'test/unit'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

class ServiceTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says_hi
    get '/'
    assert last_response.ok?
    assert_equal 'hello, world', last_response.body
  end
end
