require 'imforger/version'

Gem::Specification.new do |s|
  s.name = "imforger"
  s.version = Imforger::VERSION

  s.authors = ["Casey Rosenthal", "Matthias Grosser"]
  s.date = "2013-11-05"
  s.description = "Imforger\n[short for Image Forger, because we are making copies of images]\n\nThis class relies on the Imlib2 library to quickly convert between different file types, scaling and compressing on the way."
  s.email = ["mtgrosser@gmx.net"]
  s.extensions = ["ext/imforger/extconf.rb"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "ext/imforger/extconf.rb"]
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "imforger"
  s.summary = "Imforger [short for Image Forger, because we are making copies of images]  This class relies on the Imlib2 library to quickly convert between different file types, scaling and compressing on the way."

  s.add_dependency('rake-compiler', ">= 0.4.1")
  # s.add_dependency('hoe', ">= 2.9.1")

  #gem "bundler"
  #gem "hoe"
  #gem "hoe-git"
  #gem "hoe-doofus"
  #gem "hoe-gemcutter"
  s.add_development_dependency "rake-compiler"

end

