require 'rails'

module Tokenizes
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "This generator installs token-input*.css, tokenizes-ujs and jquery.tokeninput"
      source_root File.expand_path('../../../../../vendor/assets/javascripts', __FILE__)

      def copy_tokeninput
	say_status("remember to run rails g jquery:install or install jquery manually!", :yellow)
        say_status("copying", "jquery.tokeninput", :green)
	copy_file "jquery.tokeninput.js", "public/javascripts/jquery.tokeninput.js"
      end

      def copy_tokenizes
        say_status("copying", "tokenizes-ujs", :green)
	copy_file "tokenizes-ujs.js", "public/javascripts/tokenizes-ujs.js"
      end

      def copy_stylesheets
        say_status("copying", "token-input-*.css", :green)
	copy_file "token-input.css", "public/stylesheets/token-input.css"
	copy_file "token-input-facebook.css", "public/stylesheets/token-input-facebook.css"
	copy_file "token-input-mac.css", "public/stylesheets/token-input-mac.css"
      end
    end
  end
end
