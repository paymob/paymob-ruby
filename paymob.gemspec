# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paymob/version'

Gem::Specification.new do |spec|
  spec.name          = "paymob"
  spec.version       = Paymob::VERSION
  spec.authors       = ["Ahmed H. Ismail"]
  spec.email         = ["ahmedhisham@paymobsolutions.com"]

  spec.summary       = %q{Paymob ruby SDK.}
  spec.description   = %q{Provides an interface to the paymob API.}
  spec.homepage      = "https://paymobsolutions.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry'

  spec.add_runtime_dependency 'openssl'
end