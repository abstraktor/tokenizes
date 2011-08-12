# Configure Rails 3.0 for use public/javascripts/tokenizes-ujs.js and jquery.tokeninput.js

module Tokenizes
  module Rails

    class Railtie < ::Rails::Railtie
      config.before_configuration do
	      config.action_view.javascript_expansions[:defaults] += ['jquery.tokeninput.js','tokenizes-ujs']
      end
    end

  end
end
