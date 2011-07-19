# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name	= "tokenizes"
  s.version	= "0.1"
  s.platform	= "1.8"
  s.authors	= ["Bastian Kruck"]
  s.email	= ["ich@bkruck.de"]
  s.summary	= "Use jquery.token-input easily"
  s.description = "This gem provides the tokenizes(relation) method for Models to specify their tokenized resources to create token-fields. It provides further a helper to create tokenized tags"

  s.rubyforge_project = "tokenizes"

  s.add_dependency "rails"
  s.add_dependency "jquery-rails"

  s.files 	= `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").select{|f| f =~/^bin/}
  s.require_path= 'lib'
end
