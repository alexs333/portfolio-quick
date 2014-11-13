# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'portfolio_quick/version'

Gem::Specification.new do |spec|
  spec.name          = 'portfolio-quick'
  spec.version       = PortfolioQuick::VERSION
  spec.authors       = ['alexs333']
  spec.email         = ['aserdyuk@dius.com.au']
  spec.summary       = 'ASX portfolio manager with smarts.'
  spec.description   = 'ASX portfolio manager. Fetches configured portfolio stock data from the internet and persists it into the local storage if the internet is not available.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

	spec.add_runtime_dependency 'terminal-table'
	spec.add_runtime_dependency 'mechanize'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
