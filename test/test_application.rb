#!/usr/bin/ruby
require_relative "test_helper"

class TestController < Hamster::Controller
  def index
    "hello!" #Not rendering a view
  end
end

class TestApp < Hamster::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class HamsterAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/example/route"
    assert last_response.ok?
    body = last_response.body
    assert body["hello"]
  end
end
