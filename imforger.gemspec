$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "imforger/version"

Gem::Specification.new do |s|
  s.name          = 'imforger'
  s.version       = Imforger::VERSION
  s.date          = '2013-11-05'
  s.summary       = 'Simple Model-Based Authorization for Rails'
  s.description   = 'A simple, yet flexible approach to model-based authorization'
  s.authors       = ['Casey Rosenthal', 'Matthias Grosser']
  s.email         = 'mtgrosser@gmx.net'
  s.extensions    = ['ext/imforger/extconf.rb']
  s.files         = Dir['{lib}/**/*.rb', 'ext/imforger/extconf.rb', 'LICENSE', 'README.md', 'CHANGELOG']
  s.require_paths = ["lib"]
  s.homepage      = 'http:///github.com/mtgrosser/imforger'
  s.summary       = "Imforger [short for Image Forger, because we are making copies of images]  This class relies on the Imlib2 library to quickly convert between different file types, scaling and compressing on the way."

  s.add_dependency 'rake-compiler', '>= 0.4.1'
end


