# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/butts/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-butts'
  spec.version       = Capistrano::Butts::VERSION
  spec.authors       = ['Alex Ford']
  spec.email         = ['alexford87@me.com']

  spec.summary       = 'Reminds you to hold on to your butts before production deploys'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']

  spec.add_runtime_dependency     'capistrano', '~> 3'

  spec.add_development_dependency 'bundler',            '~> 1.10.6'
  spec.add_development_dependency 'pry'
end
