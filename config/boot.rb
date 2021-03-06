ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'rails/commands/server'

# change default port webrick server
module Rails
  class Server
    def default_options
      super.merge({ :Port => 3333 })
    end
  end
end
