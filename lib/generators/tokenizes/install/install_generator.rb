require 'rails'

module Tokenizes
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "This generator installs token-input*.css, tokenizes-ujs and jquery.tokeninput"
      source_root File.expand_path('../../../../../vendor/assets', __FILE__)

      def copy_js
	      copy_file "javascripts/jquery.tokeninput.js", "public/javascripts/jquery.tokeninput.js"
	      copy_file "javascripts/jquery.js", "public/javascripts/jquery.js"
	      copy_file "javascripts/tokenizes-ujs.js", "public/javascripts/tokenizes-ujs.js"
      end

      def copy_stylesheets
        say_status("copying", "token-input-*.css", :green)
	      copy_file "stylesheets/token-input.css", "public/stylesheets/token-input.css"
	      copy_file "stylesheets/token-input-facebook.css", "public/stylesheets/token-input-facebook.css"
	      copy_file "stylesheets/token-input-mac.css", "public/stylesheets/token-input-mac.css"
      end
    end
  end
end
