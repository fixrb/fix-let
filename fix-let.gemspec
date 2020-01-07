# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'fix-let'
  spec.version       = File.read('VERSION.semver').chomp
  spec.authors       = ['Cyril Kato']
  spec.email         = ['contact@cyril.email']
  spec.summary       = 'Fix extension gem to define memoized helper methods.'
  spec.description   = 'Provides "let" method for memoized helper definition.'
  spec.homepage      = 'https://github.com/fixrb/fix-let'
  spec.license       = 'MIT'
  spec.files         = Dir['LICENSE.md', 'README.md', 'lib/**/*']

  spec.add_dependency 'fix', '< 0.18'

  spec.add_development_dependency 'bundler',    '~> 2.1'
  spec.add_development_dependency 'rake',       '~> 13.0'
  spec.add_development_dependency 'rubocop',    '~> 0.79'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'simplecov',  '~> 0.17'
  spec.add_development_dependency 'yard',       '~> 0.9'
end
