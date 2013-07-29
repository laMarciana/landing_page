$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "landing_page/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "landing_page"
  s.version     = LandingPage::VERSION
  s.authors     = ["Marc Busqué"]
  s.email       = ["marc@lamarciana.com"]
  s.homepage    = "https://github.com/laMarciana/landing_page"
  s.summary     = "Rails 4 engine for a landing page"
  s.description = "Coming soon, before setember 2013"

  s.files = Dir["{app,config,db,lib}/**/*", "COPYING.txt", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.0"
  s.add_dependency "slim-rails", "~> 1.1"
  s.add_dependency "createsend", "~> 3.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~>2.14"
  s.add_development_dependency "capybara", "~>2.1"
  s.add_development_dependency "factory_girl_rails", "~>4.2", ">=4.2.1"
  s.add_development_dependency "shoulda-matchers", "~>2.2"
end
