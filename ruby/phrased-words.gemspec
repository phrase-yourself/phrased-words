lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phrased/words/version'

Gem::Specification.new do |spec|
  spec.name          = 'phrased-words'
  spec.version       = Phrased::Words::VERSION
  spec.authors       = ['Jakob Holderbaum']
  spec.email         = ['author@phrased.org']

  spec.summary       = 'Wordlists for the phrased gem'
  spec.description   = 'Contains a collection of wordlists that are used by
  the phrased gem to generate speaking passphrases'
  spec.homepage      = 'https://phrased.org/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0').reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16.a'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
