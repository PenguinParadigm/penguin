# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'penguin/version'

Gem::Specification.new do |spec|
  spec.name          = "penguin"
  spec.version       = Penguin::VERSION
  spec.authors       = ["Jack Reed"]
  spec.email         = ["phillipjreed@gmail.com"]

  spec.summary       = ''
  spec.description   = ''
  spec.homepage      = ''
  spec.license       = 'Apache2'


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12"
  spec.add_development_dependency "rspec", "~> 3.0"
end
