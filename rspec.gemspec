# -*- encoding: utf-8 -*-
require "rspec/version"

require "rspec/core/version"
require "rspec/mocks/version"
require "rspec/expectations/version"

Gem::Specification.new do |s|
  s.name        = "rspec"
  s.version     = RSpec::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Chelimsky", "Chad Humphries"]
  s.email       = "dchelimsky@gmail.com;chad.humphries@gmail.com"
  s.homepage    = "http://github.com/rspec/rspec"
  s.summary     = "rspec-#{RSpec::Version::STRING}"
  s.description = "Meta-gem that depends on the other rspec gems"

  s.rubygems_version   = "1.3.7"
  s.rubyforge_project  = "rspec"

  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.extra_rdoc_files = [ "README.markdown" ]
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_path     = "lib"

  s.add_development_dependency "rspec-core",         ">= #{RSpec::Core::Version::STRING}"
  s.add_development_dependency "rspec-mocks",        ">= #{RSpec::Mocks::Version::STRING}"
  s.add_development_dependency "rspec-expectations", ">= #{RSpec::Expectations::Version::STRING}"
end
