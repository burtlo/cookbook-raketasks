# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cookbook/raketasks/version'

Gem::Specification.new do |spec|
  spec.name          = "cookbook-raketasks"
  spec.version       = Cookbook::Raketasks::VERSION
  spec.authors       = ["Franklin Webber"]
  spec.email         = ["franklin.webber@gmail.com"]
  spec.summary       = %q{Common Rake Tasks for Chef Cookbooks}
  spec.description   = %q{Chef Cookbooks often times share common tasks for checking the style or correctness. This gem provides common tasks to save cookbook maintainers the hassle of having to copy and paste existing Rake tasks into a new cookbook. }
  spec.homepage      = "https://github.com/burtlo/cookbook-raketasks"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "chefspec"
  spec.add_dependency "foodcritic"
  spec.add_dependency "rubocop"
  spec.add_dependency "test-kitchen"
  spec.add_dependency "bump"
end
