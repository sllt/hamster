#!/usr/bin/ruby
require_relative "test_helper"

class TestApp < Hamster::Application
end

class HamsterAppTest < Minitest::Test
  include Rack::Test::Methods
  def app
    TestApp.new
  end
  def test_request
    get "/"
    assert last_response.ok?
    body = last_response.body
    assert body["hello"]
  end
end
