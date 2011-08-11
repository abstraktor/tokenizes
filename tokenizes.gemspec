# -*- coding: utf-8 -*-

Gem::Specification.new do |s|
  s.name	= "tokenizes"
  s.version	= "0.1"
  s.platform    = Gem::Platform::RUBY
  s.homepage    = "http://rubygems.org/gems/tokenizes"
  s.authors	= ["Bastian Kruck"]
  s.email	= ["ich@bkruck.de"]
  s.summary	= "Use jquery.token-input easily"
  s.description = "This gem provides the tokenizes(relation) method for Models to specify their tokenized resources to create token-fields. It provides further a helper to create tokenized tags"

  s.add_dependency "rails"
  s.add_dependency "jquery-rails"

  s.add_dependency "railties", "~> 3.0"
  s.add_dependency "thor",     "~> 0.14"
  s.add_development_dependency "bundler", "~> 1.0.0"

  s.files 	= `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").select{|f| f =~/^bin\//}
  s.require_path= 'lib'
end
