require "hamster/version"
require "hamster/routing"
require "hamster/util"
require "hamster/dependencies"
require "hamster/controller"
require "hamster/file_model"
require "hamster/sqlite_model"
module Hamster
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404,
          {'Content-Type' => 'text/html'}, []]
      end
      rack_app = get_rack_app env
      rack_app.call env
    end
  end
end
