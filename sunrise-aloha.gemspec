$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sunrise/aloha/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sunrise-aloha"
  s.version     = Sunrise::Aloha::VERSION
  s.authors     = ["Pavel Galeta, Igor Galeta"]
  s.email       = ["superp1987@gmail.com"]
  s.homepage    = "https://github.com/superp/sunrise-aloha"
  s.summary     = "Aloha editor for Sunrise CMS."
  s.description = "http://www.aloha-editor.org/"

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency "sqlite3"
  s.add_development_dependency("database_cleaner", ">= 0")
  s.add_development_dependency("capybara", "~> 1.1.2")
end
