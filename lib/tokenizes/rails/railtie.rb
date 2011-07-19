# Configure Rails 3.0 for use public/javascripts/tokenizes-ujs.js

module Tokenizes
  module Rails

    class Railtie < ::Rails::Railtie
      config.before_configuration do
	config.action_view.javascript_expansions[:defaults] << 'tokenizes-ujs'
      end
    end

  end
end
