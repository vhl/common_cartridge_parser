# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'common_cartridge/version'

Gem::Specification.new do |spec|
  spec.name          = 'common_cartridge_parser'
  spec.version       = CommonCartridge::VERSION
  spec.authors       = ['Josh Simpson', 'Remy Obein']
  spec.email         = ['jsimpson@instructure.com', 'remy@cassia.tech']
  spec.summary       = %q{CommonCartridgeParser}
  spec.description   = 'Parse IMS Common Cartridge packages'
  spec.homepage      = 'https://github.com/vhl/common_cartridge_parser/'
  spec.license       = 'MIT'

  spec.files         = Dir.glob("{lib,spec}/**/*")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'sax-machine', '~> 1.3.2'
  spec.add_dependency 'nokogiri', '~> 1.11.0'
  spec.add_dependency 'rubyzip', '~> 1.3.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
